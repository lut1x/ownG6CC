using System;
using System.IO;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using G6ControlCenter.Core;
using G6ControlCenter.Hardware;

namespace G6ControlCenter;

public sealed class PanelSettings
{
    public bool AutoSport { get; set; }
    public bool ManageRefresh { get; set; } = true;
    public bool ProfileLighting { get; set; } = true;
    public FanCurve? CpuCurve { get; set; }
    public FanCurve? GpuCurve { get; set; }
    private static string Path => System.IO.Path.Combine(AppContext.BaseDirectory, "settings.json");
    public static PanelSettings Load()
    {
        try { return JsonSerializer.Deserialize<PanelSettings>(File.ReadAllText(Path)) ?? new(); }
        catch { return new(); }
    }
    public void Save()
    {
        string text = JsonSerializer.Serialize(this, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(Path + ".tmp", text); File.Move(Path + ".tmp", Path, true);
    }
}
public sealed record PanelSnapshot(ThermalSample? Thermal, BatteryInfo Battery, double CpuLoad, int Refresh, string? Warning);
public sealed class ControlSession : IDisposable
{
    private readonly SemaphoreSlim gate = new(1, 1);
    private readonly CpuLoad cpu = new();
    private readonly ProfilePolicy policy = new();
    private DchuDevice? device;
    private WindowsPower? power;
    private DisplayControl? display;
    private int initialFirmwareMode;
    private bool writes, disposed;
    private DateTimeOffset? coolUntil;
    public PanelSettings Settings { get; } = PanelSettings.Load();
    public bool Ready => device is not null;
    public bool CurveActive => device?.CurveActive == true;
    public bool Cooling => coolUntil is not null;
    public Profile Selected => policy.Selected;
    public FanCurve? StockCpu => device?.StockCpu;
    public FanCurve? StockGpu => device?.StockGpu;
    public bool SupportsCurve => device?.SupportsCurve == true;
    public ChargeWindow? Charge => device?.Charge;
    public string ChargeStatus => device?.ChargeStatus ?? "Нет подключения к контроллеру";
    public string? HardwareError { get; private set; }
    public bool Preview { get; }
    public bool Applied { get; private set; }
    public ControlSession(bool preview) { Preview = preview; }
    private async Task<T> Serial<T>(Func<T> action)
    {
        await gate.WaitAsync();
        try { if(disposed)throw new ObjectDisposedException(nameof(ControlSession));return await Task.Run(action); } finally { gate.Release(); }
    }
    public Task Initialize() => Serial(() =>
    {
        var battery = WindowsBattery.Read(); policy.PowerChanged(battery.OnAc);
        try { display = new(); } catch { }
        try
        {
            device = new(); initialFirmwareMode = device.ReadPage(1)[1];
            device.ProbeCharge(); power = new();
        }
        catch (Exception e) { device?.Dispose(); device = null; HardwareError = e.Message; }
        return true;
    });
    public Task<string> Apply(Profile profile) => Serial(() => ApplyCore(profile));
    private string ApplyCore(Profile profile, bool automaticTransition = false)
    {
        if (Preview) throw new InvalidOperationException("В предпросмотре настройки не меняются.");
        if (device is null || power is null) throw new InvalidOperationException(HardwareError ?? "Контроллер недоступен.");
        var battery = WindowsBattery.Read(); policy.PowerChanged(battery.OnAc);
        if (!battery.OnAc && profile != Profile.Battery) throw new InvalidOperationException("Питание отключено. Доступен профиль АКБ.");
        if (!automaticTransition) policy.Select(profile);
        try
        {
            writes = true; device.RestoreAutomatic(); coolUntil = null;
            power.Apply(profile); device.SetPowerProfile(profile);
            if (profile == Profile.Game && !WindowsBattery.Read().OnAc)
                return ApplyCore(Profile.Battery);
            string refresh = Settings.ManageRefresh && display is not null ? display.Apply(profile) : "Частота экрана не менялась";
            string? lightingError = null;
            if (Settings.ProfileLighting)
            {
                try { device.SetKeyboard(profile); } catch (Exception e) { lightingError = "Подсветка: " + e.Message; }
            }
            Applied = true;
            return "Профиль «" + Name(profile) + "» включён · " + refresh + (lightingError is null ? "" : " · " + lightingError);
        }
        catch
        {
            Applied = false;
            try { power.Restore(); } catch { }
            try { device.RestoreAutomatic(); } catch { }
            try { display?.Restore(); } catch { }
            throw;
        }
    }
    public Task<PanelSnapshot> Poll(bool allowAutomation) => Serial(() =>
    {
        var battery = WindowsBattery.Read(); bool changed = policy.OnAc != battery.OnAc;
        policy.PowerChanged(battery.OnAc);
        string? warning = null; ThermalSample? thermal = null;
        if (device is not null)
        {
            try { thermal = device.ReadThermals(); }
            catch (Exception e)
            {
                warning = e.Message;
                if (device.CurveActive || Cooling) { try { device.RestoreAutomatic(); coolUntil = null; } catch (Exception r) { warning += " · Автомат: " + r.Message; } }
            }
        }
        double load = cpu.Read();
        if (!Preview && allowAutomation && device is not null)
        {
            if (changed) { try { warning = ApplyCore(battery.OnAc ? Profile.Work : Profile.Battery); } catch (Exception e) { warning = e.Message; } }
            if (coolUntil.HasValue && DateTimeOffset.UtcNow >= coolUntil.Value)
            {
                try { device.RestoreAutomatic(); coolUntil = null; } catch (Exception e) { warning = e.Message; }
            }
            if (device.CurveActive && thermal is not null && (thermal.Cpu.Temperature >= 92 || thermal.Gpu.Temperature >= 87))
            {
                try { device.RestoreAutomatic(); warning = "Температура высокая: возвращено штатное охлаждение."; } catch (Exception e) { warning = e.Message; }
            }
            var next = policy.AutoSport(Settings.AutoSport && !Cooling, load, DateTimeOffset.UtcNow);
            if (next.HasValue) { try { warning = ApplyCore(next.Value, true); } catch (Exception e) { warning = e.Message; } }
        }
        int hz = 0; try { hz = display?.Frequency ?? 0; } catch { }
        return new PanelSnapshot(thermal, battery, load, hz, warning);
    });
    public Task<string> Cool() => Serial(() =>
    {
        RequireWrite(); device!.SetFanMode(1); writes = true; coolUntil = DateTimeOffset.UtcNow.AddSeconds(60);
        return "Максимальное охлаждение на 60 секунд";
    });
    public Task<string?> PowerSignal() => Serial<string?>(() =>
    {
        if(Preview||device is null)return null;
        var battery=WindowsBattery.Read();
        if(policy.OnAc==battery.OnAc)return null;
        return ApplyCore(battery.OnAc?Profile.Work:Profile.Battery);
    });
    public Task<string> Automatic() => Serial(() =>
    {
        RequireWrite(); device!.RestoreAutomatic(); coolUntil = null; writes = true; return "Включено штатное автоматическое охлаждение";
    });
    public Task<string> Curve(FanCurve cpuCurve, FanCurve gpuCurve) => Serial(() =>
    {
        RequireWrite(); device!.ApplyCurve(cpuCurve, gpuCurve); writes = true; coolUntil = null;
        Settings.CpuCurve = cpuCurve.Copy(); Settings.GpuCurve = gpuCurve.Copy(); Settings.Save();
        return "Кривая передана контроллеру · при выходе вернётся заводская";
    });
    public Task<string> ChargeLimit(int limit) => Serial(() =>
    {
        RequireWrite(); device!.SetChargeLimit(limit); return limit == 100 ? "Ограничение заряда выключено" : $"Порог заряда: {limit}%";
    });
    public Task Suspend() => Serial(() =>
    {
        if (!Preview && writes && device is not null) { device.RestoreAutomatic(); coolUntil = null; }
        return true;
    });
    private void RequireWrite() { if (Preview) throw new InvalidOperationException("Предпросмотр: запись отключена."); if (device is null) throw new InvalidOperationException(HardwareError ?? "Контроллер недоступен."); }
    public static string Name(Profile profile) => profile switch { Profile.Work => "Работа", Profile.Game => "Игра", _ => "АКБ" };
    public void Dispose()
    {
        if (disposed) return;
        gate.Wait();
        try
        {
            disposed = true;
            if (!Preview && writes && device is not null)
            {
                try { device.RestoreAutomatic(); } catch { }
                try { device.RestorePowerMode(initialFirmwareMode); } catch { }
            }
            try { power?.Dispose(); } catch { }
            try { display?.Restore(); } catch { }
            device?.Dispose();
        }
        finally { gate.Release(); }
    }
}
