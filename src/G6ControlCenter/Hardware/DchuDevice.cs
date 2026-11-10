using System;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using Microsoft.Win32;
using G6ControlCenter.Core;

namespace G6ControlCenter.Hardware;

public sealed class DchuDevice : IDisposable
{
    private const string BaseHash = "470d96cae14fef2823330c63ea683cf87cb0f6984dc4eb86d21420ff71be3299";
    private const string ExHash = "dab807b5d4a621893ef5c5c1941e9d8ce91dda6b2518e931f4bb4727dfd80e98";
    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int GetBuffer(int cmd, IntPtr output);
    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int GetInteger(int cmd, ref int output);
    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int SetData(int cmd, IntPtr input, int length);
    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int Settings(int page, int offset, int length, IntPtr data);
    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int SetDataEx(int cmd, IntPtr input, int length, IntPtr output);
    private readonly IntPtr library;
    private IntPtr exLibrary;
    private readonly GetBuffer getBuffer;
    private readonly GetInteger getInteger;
    private readonly SetData setData;
    private readonly Settings readSettings, writeSettings;
    private SetDataEx? setEx;
    private bool disposed;
    public string Model { get; }
    public int Features { get; }
    public byte[] Capabilities { get; }
    public FanCurve StockCpu { get; }
    public FanCurve StockGpu { get; }
    public bool SupportsCurve => Capabilities[12] == 2 && (Capabilities[43] & 2) == 0;
    public bool SupportsRgb => (Features & 16) != 0;
    public bool SupportsPower => (Features & 1) != 0;
    public bool CurveActive { get; private set; }
    public string ChargeStatus { get; private set; } = "Порог заряда не поддерживается";
    public ChargeWindow? Charge { get; private set; }

    private static IntPtr LoadVerified(string path, string hash)
    {
        if (!File.Exists(path)) throw new FileNotFoundException("Не найден штатный аппаратный модуль.", path);
        if (!Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(path))).Equals(hash, StringComparison.OrdinalIgnoreCase))
            throw new InvalidOperationException("Версия аппаратного модуля изменилась. Нужна повторная проверка совместимости.");
        return NativeLibrary.Load(Path.GetFullPath(path));
    }
    public DchuDevice()
    {
        Model = Registry.GetValue(@"HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemProductName", "")?.ToString() ?? "";
        if (Model != "G6 MF") throw new InvalidOperationException("Эта версия предназначена для GIGABYTE G6 MF.");
        string path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFilesX86), "ControlCenter", "DCHU", "InsydeDCHU.dll");
        string portable=Path.Combine(AppContext.BaseDirectory,"vendor","bridge","InsydeDCHU.dll");
        if(File.Exists(portable))path=portable;
        library = LoadVerified(path, BaseHash);
        try
        {
            T Export<T>(string n) where T : Delegate => Marshal.GetDelegateForFunctionPointer<T>(NativeLibrary.GetExport(library, n));
            getBuffer = Export<GetBuffer>("GetDCHU_Data_Buffer"); getInteger = Export<GetInteger>("GetDCHU_Data_Integer");
            setData = Export<SetData>("SetDCHU_Data"); readSettings = Export<Settings>("ReadAppSettings"); writeSettings = Export<Settings>("WriteAppSettings");
            Capabilities = ReadPackage(13);
            if (Capabilities[12] != 2) throw new InvalidOperationException("Аппаратная конфигурация вентиляторов не совпадает с проверенной.");
            StockCpu = FanCurve.FromCapabilities(Capabilities, 16); StockGpu = FanCurve.FromCapabilities(Capabilities, 24);
            int feature = int.MinValue; int ret = getInteger(16, ref feature);
            if (feature == int.MinValue || ret != feature) throw new IOException("Не удалось прочитать возможности ноутбука.");
            Features = feature; ReadThermals();
        }
        catch { NativeLibrary.Free(library); throw; }
    }
    private static byte[] Buffer() => Enumerable.Repeat((byte)0xa5, 4096).ToArray();
    public byte[] ReadPackage(int cmd)
    {
        var b = Buffer(); var pin = GCHandle.Alloc(b, GCHandleType.Pinned);
        try { if (getBuffer(cmd, pin.AddrOfPinnedObject()) != cmd) throw new IOException("Драйвер не ответил. Запусти панель от имени администратора."); return b[..256]; }
        finally { pin.Free(); }
    }
    public byte[] ReadPage(int page)
    {
        var b = Buffer(); var pin = GCHandle.Alloc(b, GCHandleType.Pinned);
        try { if (readSettings(page, 0, 256, pin.AddrOfPinnedObject()) != 4096) throw new IOException("Не удалось прочитать состояние контроллера."); return b[..256]; }
        finally { pin.Free(); }
    }
    private int Write(int cmd, byte[] input)
    {
        var pin = GCHandle.Alloc(input, GCHandleType.Pinned);
        try
        {
            int result = setData(cmd, pin.AddrOfPinnedObject(), input.Length);
            if (result == 0) throw new IOException($"Контроллер отклонил команду {cmd}.");
            return result;
        }
        finally { pin.Free(); }
    }
    private void Store(int page, int offset, byte value)
    {
        var b = new byte[4096]; b[0] = value; var pin = GCHandle.Alloc(b, GCHandleType.Pinned);
        try { if (writeSettings(page, offset, 1, pin.AddrOfPinnedObject()) == 0) throw new IOException("Не удалось сохранить аппаратное состояние."); }
        finally { pin.Free(); }
        if (ReadPage(page)[offset] != value) throw new IOException("Состояние контроллера не подтвердилось.");
    }
    public ThermalSample ReadThermals() => DchuProtocol.Decode(ReadPackage(12), Capabilities[12]);
    public int SetFanMode(int mode)
    {
        if (mode is not (0 or 1 or 6)) throw new ArgumentOutOfRangeException(nameof(mode));
        int result = Write(121, DchuProtocol.Scalar(1, (uint)mode)); Store(4, 5, (byte)mode); return result;
    }
    public void SetPowerProfile(Profile profile)
    {
        if (!SupportsPower) throw new InvalidOperationException("Штатное переключение питания недоступно.");
        byte mode = profile switch { Profile.Game => 2, Profile.Battery => 1, _ => 0 };
        // No overclock/DTT override bits: use the plain, stock firmware profile.
        RestorePowerMode(mode);
    }
    public void RestorePowerMode(int mode)
    {
        if(mode is < 0 or > 3)throw new ArgumentOutOfRangeException(nameof(mode));
        Write(121,DchuProtocol.Scalar(25,(uint)mode));Store(1,1,(byte)mode);
    }
    public void SetKeyboard(Profile profile)
    {
        if (!SupportsRgb) return;
        uint brg = profile switch { Profile.Battery => 0x0000ffu, Profile.Game => 0x00ff00u, _ => 0xc80000u };
        Write(103, BitConverter.GetBytes(0xe007f001u));
        Write(103, BitConverter.GetBytes(0xf0000000u | brg));
        Write(103, BitConverter.GetBytes(0xf4000000u | (profile == Profile.Battery ? 47u : 95u)));
    }
    public void ApplyCurve(FanCurve cpu, FanCurve gpu)
    {
        if (!SupportsCurve) throw new InvalidOperationException("Пользовательская кривая недоступна.");
        var current = ReadThermals();
        if (current.Cpu.Temperature >= 85 || current.Gpu.Temperature >= 80) throw new InvalidOperationException("Сначала охлади ноутбук, затем применяй кривую.");
        if (cpu.First != StockCpu.First || gpu.First != StockGpu.First) throw new InvalidOperationException("Начальные точки должны совпадать с заводскими.");
        try
        {
            CurveActive = true; Write(14, DchuProtocol.CurvePacket(cpu, gpu));
            var read = ReadPackage(13);
            if (read[18] != cpu.Middle.Temperature || read[20] != cpu.High.Temperature || read[26] != gpu.Middle.Temperature || read[28] != gpu.High.Temperature)
                throw new IOException("Прошивка не подтвердила новые точки кривой. Возвращаем автомат.");
            SetFanMode(6);
        }
        catch { RestoreAutomatic(); throw; }
    }
    public void RestoreAutomatic()
    {
        try
        {
            if (CurveActive)
            {
                var packet = DchuProtocol.CurvePacket(StockCpu, StockGpu, false);
                // Restore original raw duty bytes rather than their rounded UI percentages.
                void Restore(int cap, int points, int slopes)
                {
                    packet[points+1] = Capabilities[cap+3]; packet[points+3] = Capabilities[cap+5];
                    var t = new[]{(int)Capabilities[cap],Capabilities[cap+2],Capabilities[cap+4],100};
                    var duty = new[]{(int)Capabilities[cap+1],Capabilities[cap+3],Capabilities[cap+5],255};
                    for(int i=0;i<3;i++)
                    {
                        int v=(int)Math.Round(16.0*(duty[i+1]-duty[i])/(t[i+1]-t[i]));
                        packet[slopes+2*i]=(byte)(v>>8);packet[slopes+2*i+1]=(byte)v;
                    }
                }
                Restore(16,2,14);Restore(24,6,20);Write(14,packet);
            }
        }
        finally { SetFanMode(0); CurveActive = false; }
    }
    private byte[] Exchange(byte subcommand, Action<byte[]>? fill = null)
    {
        if (setEx is null) throw new InvalidOperationException("Расширенный аппаратный интерфейс недоступен.");
        var input = new byte[256]; input[0] = subcommand; fill?.Invoke(input);
        var output = Buffer(); var a = GCHandle.Alloc(input, GCHandleType.Pinned); var b = GCHandle.Alloc(output, GCHandleType.Pinned);
        try { if (setEx(4, a.AddrOfPinnedObject(), 256, b.AddrOfPinnedObject()) != 4) throw new IOException("Нет ответа расширенного интерфейса."); return output[..256]; }
        finally { a.Free(); b.Free(); }
    }
    public void ProbeCharge()
    {
        try
        {
            string file = Path.Combine(AppContext.BaseDirectory, "vendor", "InsydeDCHU.dll");
            exLibrary = LoadVerified(file, ExHash);
            setEx = Marshal.GetDelegateForFunctionPointer<SetDataEx>(NativeLibrary.GetExport(exLibrary, "SetDCHU_DataEx"));
            var b = Exchange(30); var starts = b[16..32].Where(v => v > 0 && v <= 100).Distinct().Order().ToArray();
            var stops = b[32..48].Where(v => v > 0 && v <= 100).Distinct().Order().ToArray();
            if (starts.Length == 0 || stops.Length == 0 || b[0] > 1) { Charge = null; return; }
            Charge = new(b[0] == 1, b[1], b[2], starts, stops); ChargeStatus = "Доступен";
        }
        catch (Exception e) { Charge = null; ChargeStatus = "Недоступен: " + e.Message; }
    }
    public void SetChargeLimit(int stop)
    {
        var c = Charge ?? throw new InvalidOperationException("Ограничение заряда не подтверждено прошивкой.");
        bool enabled = stop < 100;
        int start = c.Starts.Where(v => v < stop).Select(v => (int)v).DefaultIfEmpty(-1).Max();
        if (enabled && (!c.Stops.Contains((byte)stop) || start < 0)) throw new ArgumentException("Этот порог не поддерживается прошивкой.");
        Exchange(31, b => { b[1] = enabled ? (byte)1 : (byte)0; b[2] = (byte)(enabled ? start : c.Start); b[3] = (byte)(enabled ? stop : c.Stop); });
        var read = Exchange(30);
        if ((read[0] == 1) != enabled || (enabled && read[2] != stop)) throw new IOException("Порог заряда не подтвердился после записи.");
        Charge = c with { Enabled = enabled, Start = read[1], Stop = read[2] };
    }
    public void RestoreChargeWindow(ChargeWindow original)
    {
        Exchange(31, b => { b[1] = original.Enabled ? (byte)1 : (byte)0; b[2] = (byte)original.Start; b[3] = (byte)original.Stop; });
        var read = Exchange(30);
        if ((read[0] == 1) != original.Enabled || read[1] != original.Start || read[2] != original.Stop)
            throw new IOException("Исходные параметры зарядки не подтвердились.");
        Charge = original;
    }
    public void Dispose() { if (disposed) return; disposed = true; if (exLibrary != IntPtr.Zero) NativeLibrary.Free(exLibrary); NativeLibrary.Free(library); }
}
public sealed record ChargeWindow(bool Enabled, int Start, int Stop, byte[] Starts, byte[] Stops);
