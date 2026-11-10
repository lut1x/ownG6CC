using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using G6ControlCenter.Core;

namespace G6ControlCenter.Hardware;

public sealed record BatteryInfo(bool OnAc, bool Present, int Percent, bool Charging, double? Watts, double? FullWh, double? RemainingWh, int? Seconds);
public static class WindowsBattery
{
    [StructLayout(LayoutKind.Sequential)] private struct PowerStatus { public byte Ac, Flag, Percent, Saver; public uint Life, FullLife; }
    [StructLayout(LayoutKind.Sequential)] private struct BatteryState { public byte Ac, Present, Charging, Discharging; public uint Spare; public uint Full, Remaining, Rate, Seconds, Alert1, Alert2; }
    [DllImport("kernel32.dll")] private static extern bool GetSystemPowerStatus(out PowerStatus status);
    [DllImport("powrprof.dll")] private static extern uint CallNtPowerInformation(int level, IntPtr input, uint inSize, out BatteryState output, uint outSize);
    public static BatteryInfo Read()
    {
        if (!GetSystemPowerStatus(out var s)) throw new InvalidOperationException("Не удалось определить источник питания.");
        if (s.Ac == 255) throw new InvalidOperationException("Источник питания пока неизвестен.");
        double? watts = null, full = null, remaining = null; int? seconds = s.Life < int.MaxValue ? (int)s.Life : null;
        bool present = s.Flag != 128 && s.Flag != 255;
        if (CallNtPowerInformation(5, IntPtr.Zero, 0, out var b, (uint)Marshal.SizeOf<BatteryState>()) == 0 && b.Present != 0)
        {
            full = b.Full is > 0 and < 1000000 ? b.Full / 1000.0 : null;
            remaining = b.Remaining < 1000000 ? b.Remaining / 1000.0 : null;
            if (b.Rate is > 0 and < 1000000) watts = b.Rate / 1000.0;
            if (b.Seconds is > 0 and < 172800) seconds = (int)b.Seconds;
        }
        return new(s.Ac == 1, present, s.Percent <= 100 ? s.Percent : -1, (s.Flag & 8) != 0, watts, full, remaining, seconds);
    }
}
public sealed class CpuLoad
{
    [DllImport("kernel32.dll")] private static extern bool GetSystemTimes(out long idle, out long kernel, out long user);
    private long previousIdle, previousTotal;
    public double Read()
    {
        if (!GetSystemTimes(out long idle, out long kernel, out long user)) return double.NaN;
        long total = kernel + user, elapsed = total - previousTotal, idleDelta = idle - previousIdle;
        bool first = previousTotal == 0; previousTotal = total; previousIdle = idle;
        return first || elapsed <= 0 ? double.NaN : Math.Clamp(100.0 * (elapsed - idleDelta) / elapsed, 0, 100);
    }
}
public sealed class WindowsPower : IDisposable
{
    [DllImport("powrprof.dll")] private static extern uint PowerGetActiveScheme(IntPtr root, out IntPtr scheme);
    [DllImport("powrprof.dll")] private static extern uint PowerDuplicateScheme(IntPtr root, ref Guid source, ref IntPtr destination);
    [DllImport("powrprof.dll")] private static extern uint PowerWriteACValueIndex(IntPtr root, ref Guid scheme, ref Guid subgroup, ref Guid setting, uint value);
    [DllImport("powrprof.dll")] private static extern uint PowerWriteDCValueIndex(IntPtr root, ref Guid scheme, ref Guid subgroup, ref Guid setting, uint value);
    [DllImport("powrprof.dll")] private static extern uint PowerReadACValueIndex(IntPtr root, ref Guid scheme, ref Guid subgroup, ref Guid setting, out uint value);
    [DllImport("powrprof.dll")] private static extern uint PowerReadDCValueIndex(IntPtr root, ref Guid scheme, ref Guid subgroup, ref Guid setting, out uint value);
    [DllImport("powrprof.dll")] private static extern uint PowerSetActiveScheme(IntPtr root, ref Guid scheme);
    [DllImport("powrprof.dll", CharSet=CharSet.Unicode)] private static extern uint PowerWriteFriendlyName(IntPtr root, ref Guid scheme, IntPtr subgroup, IntPtr setting, byte[] name, uint size);
    [DllImport("powrprof.dll")] private static extern uint PowerDeleteScheme(IntPtr root, ref Guid scheme);
    [DllImport("kernel32.dll")] private static extern IntPtr LocalFree(IntPtr memory);
    private Guid original;
    private readonly Dictionary<Profile, Guid> plans = new();
    private bool changed;
    public WindowsPower()
    {
        Check(PowerGetActiveScheme(IntPtr.Zero, out var p));
        try { original = Marshal.PtrToStructure<Guid>(p); } finally { LocalFree(p); }
    }
    private static void Check(uint result) { if (result != 0) throw new InvalidOperationException($"Windows не применила настройку питания (код {result})."); }
    public static (int CpuMaximum, int Boost) Values(Profile p) => p switch { Profile.Game => (100, 2), Profile.Battery => (85, 0), _ => (99, 0) };
    private Guid GetPlan(Profile profile)
    {
        if (plans.TryGetValue(profile, out var existing)) return existing;
        Guid source = original; IntPtr destination = IntPtr.Zero;
        Check(PowerDuplicateScheme(IntPtr.Zero, ref source, ref destination));
        Guid plan;
        try { plan = Marshal.PtrToStructure<Guid>(destination); } finally { LocalFree(destination); }
        try
        {
            var name = System.Text.Encoding.Unicode.GetBytes("G6 Control · " + profile + "\0");
            Check(PowerWriteFriendlyName(IntPtr.Zero, ref plan, IntPtr.Zero, IntPtr.Zero, name, (uint)name.Length));
            plans[profile] = plan; return plan;
        }
        catch { PowerDeleteScheme(IntPtr.Zero, ref plan); throw; }
    }
    public void Apply(Profile profile)
    {
        Guid scheme = GetPlan(profile), subgroup = new("54533251-82be-4824-96c1-47b60b740d00");
        var values = Values(profile);
        foreach (var pair in new[] {
            (new Guid("bc5038f7-23e0-4960-96da-33abaf5935ec"), (uint)values.CpuMaximum),
            (new Guid("893dee8e-2bef-41e0-89c6-b55d0929964c"), profile == Profile.Game ? 100u : 5u),
            (new Guid("be337238-0d82-4146-a960-4f3749d470c7"), (uint)values.Boost),
            (new Guid("5d76a2ca-e8c0-402f-a133-2158492d58ad"), 0u)
        })
        {
            Guid setting = pair.Item1;
            Check(PowerWriteACValueIndex(IntPtr.Zero, ref scheme, ref subgroup, ref setting, pair.Item2));
            Check(PowerWriteDCValueIndex(IntPtr.Zero, ref scheme, ref subgroup, ref setting, pair.Item2));
            Check(PowerReadACValueIndex(IntPtr.Zero, ref scheme, ref subgroup, ref setting, out uint ac));
            Check(PowerReadDCValueIndex(IntPtr.Zero, ref scheme, ref subgroup, ref setting, out uint dc));
            if (ac != pair.Item2 || dc != pair.Item2) throw new InvalidOperationException("Windows не подтвердила параметры CPU.");
        }
        // Energy/performance preference is optional: do not fail on unsupported firmware.
        Guid epp=new("36687f9e-e3a5-4dbf-b1dc-15eb381c6863");
        if(PowerReadACValueIndex(IntPtr.Zero,ref scheme,ref subgroup,ref epp,out _)==0)
        {
            uint preference=profile==Profile.Game?0u:profile==Profile.Battery?80u:65u;
            PowerWriteACValueIndex(IntPtr.Zero,ref scheme,ref subgroup,ref epp,preference);
            PowerWriteDCValueIndex(IntPtr.Zero,ref scheme,ref subgroup,ref epp,preference);
        }
        Check(PowerSetActiveScheme(IntPtr.Zero, ref scheme)); changed = true;
    }
    public void Restore()
    {
        if (!changed) return;
        Check(PowerGetActiveScheme(IntPtr.Zero,out var memory));Guid current;
        try{current=Marshal.PtrToStructure<Guid>(memory);}finally{LocalFree(memory);}
        // Respect a power plan deliberately selected outside this application.
        if(plans.Values.Contains(current))Check(PowerSetActiveScheme(IntPtr.Zero,ref original));
        changed=false;
    }
    public void Dispose()
    {
        Restore();
        foreach (var value in plans.Values) { Guid id = value; PowerDeleteScheme(IntPtr.Zero, ref id); }
        plans.Clear();
    }
}
public sealed class DisplayControl
{
    [StructLayout(LayoutKind.Sequential, CharSet=CharSet.Unicode)] private struct DevMode
    {
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst=32)] public string Device;
        public ushort SpecVersion, DriverVersion, Size, DriverExtra; public uint Fields;
        public int X, Y; public uint Orientation, FixedOutput;
        public short Color, Duplex, YResolution, TTOption, Collate;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst=32)] public string Form;
        public ushort LogPixels; public uint Bits, Width, Height, Flags, Frequency, IcmMethod, IcmIntent, MediaType, DitherType, Reserved1, Reserved2, PanningWidth, PanningHeight;
    }
    [DllImport("user32.dll", CharSet=CharSet.Unicode)] private static extern bool EnumDisplaySettings(string? device, int mode, ref DevMode settings);
    [DllImport("user32.dll", CharSet=CharSet.Unicode)] private static extern int ChangeDisplaySettingsEx(string? device, ref DevMode settings, IntPtr window, uint flags, IntPtr parameter);
    private readonly uint original;
    private bool changed;
    public DisplayControl() { original = Current().Frequency; }
    private static DevMode Current()
    {
        var mode = new DevMode { Device = "", Form = "", Size = (ushort)Marshal.SizeOf<DevMode>() };
        if (!EnumDisplaySettings(null, -1, ref mode)) throw new InvalidOperationException("Не удалось прочитать режим экрана.");
        return mode;
    }
    public int Frequency => (int)Current().Frequency;
    public string Apply(Profile profile)
    {
        if (System.Windows.Forms.Screen.AllScreens.Length != 1) return "Несколько экранов: частота не менялась";
        var current = Current(); var modes = new List<DevMode>();
        for (int i = 0; i < 512; i++)
        {
            var m = new DevMode { Device = "", Form = "", Size = (ushort)Marshal.SizeOf<DevMode>() };
            if (!EnumDisplaySettings(null, i, ref m)) break;
            if (m.Width == current.Width && m.Height == current.Height && m.Bits == current.Bits && m.Frequency >= 48) modes.Add(m);
        }
        if (modes.Count == 0) return "Нет совместимых частот экрана";
        var target = profile == Profile.Battery ? modes.OrderBy(m => Math.Abs((int)m.Frequency - 60)).First() : modes.OrderByDescending(m => m.Frequency).First();
        if (target.Frequency != current.Frequency)
        {
            if (ChangeDisplaySettingsEx(null, ref target, IntPtr.Zero, 2, IntPtr.Zero) != 0) return "Драйвер отклонил частоту экрана";
            if (ChangeDisplaySettingsEx(null, ref target, IntPtr.Zero, 0, IntPtr.Zero) != 0) throw new InvalidOperationException("Не удалось переключить частоту экрана.");
            changed = true;
        }
        return $"Экран {Frequency} Гц";
    }
    public void Restore()
    {
        if (!changed) return;
        var mode = Current(); mode.Frequency = original; mode.Fields = 0x400000;
        if (ChangeDisplaySettingsEx(null, ref mode, IntPtr.Zero, 0, IntPtr.Zero) == 0) changed = false;
    }
}
