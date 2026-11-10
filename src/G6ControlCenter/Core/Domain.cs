using System;
using System.Collections.Generic;
using System.Linq;

namespace G6ControlCenter.Core;

public enum Profile { Work, Game, Battery }
public sealed record FanReading(int Channel, int Temperature, int Duty, int Tachometer)
{
    public int Rpm => Tachometer == 0 ? 0 : (int)Math.Round(120 / (5.565217391304348e-5 * Tachometer));
    public double Percent => Math.Round(Duty * 100.0 / 255);
}
public sealed record ThermalSample(DateTimeOffset At, FanReading Cpu, FanReading Gpu);
public sealed record CurvePoint(int Temperature, int Duty);
public sealed class FanCurve
{
    public CurvePoint First { get; set; } = new(45, 28);
    public CurvePoint Middle { get; set; } = new(60, 50);
    public CurvePoint High { get; set; } = new(80, 75);
    public CurvePoint Last => new(100, 100);
    public FanCurve Copy() => new() { First = First, Middle = Middle, High = High };
    public void Validate()
    {
        var points = new[] { First, Middle, High, Last };
        if (First.Temperature is < 20 or > 75 || First.Duty is < 20 or > 95)
            throw new ArgumentException("Неизвестные крайние точки заводской кривой.");
        for (int i = 1; i < points.Length; i++)
        {
            if (points[i].Temperature - points[i - 1].Temperature < 3)
                throw new ArgumentException("Между точками температуры должно быть не менее 3°C.");
            if (points[i].Duty < points[i - 1].Duty || points[i].Duty > 100)
                throw new ArgumentException("Скорость должна возрастать вместе с температурой, до 100%.");
        }
        if (High.Temperature > 90 || High.Duty < 60)
            throw new ArgumentException("В первой версии верхняя точка: не выше 90°C и не ниже 60%.");
    }
    public static FanCurve FromCapabilities(byte[] b, int offset)
    {
        if (b.Length < offset + 6) throw new ArgumentException("Короткий ответ кривой.");
        return new FanCurve
        {
            First = new(b[offset], (int)Math.Round(b[offset + 1] * 100.0 / 255)),
            Middle = new(b[offset + 2], (int)Math.Round(b[offset + 3] * 100.0 / 255)),
            High = new(b[offset + 4], (int)Math.Round(b[offset + 5] * 100.0 / 255))
        };
    }
}
public static class DchuProtocol
{
    public static ThermalSample Decode(byte[] b, int count)
    {
        if (b.Length < 25 || count != 2) throw new ArgumentException("Ожидаются два вентилятора G6 MF.");
        FanReading Read(int i)
        {
            int t = b[18 + 3 * i];
            // A powered-down GPU may legitimately report zero. CPU zero is never used for control.
            if ((i == 0 && t == 0) || t > 125) throw new ArgumentException("Датчик температуры недоступен.");
            return new(i + 1, t, b[16 + 3 * i], b[2 + 2 * i] * 256 + b[3 + 2 * i]);
        }
        return new(DateTimeOffset.UtcNow, Read(0), Read(1));
    }
    public static byte[] Scalar(byte subcommand, uint value)
    {
        if (value > 0xffffff) throw new ArgumentOutOfRangeException(nameof(value));
        var b = BitConverter.GetBytes(value); b[3] = subcommand; return b;
    }
    public static byte[] CurvePacket(FanCurve cpu, FanCurve gpu, bool validate = true)
    {
        if (validate) { cpu.Validate(); gpu.Validate(); }
        var b = new byte[256];
        void Write(FanCurve c, int pointOffset, int slopeOffset)
        {
            b[pointOffset] = checked((byte)c.Middle.Temperature);
            b[pointOffset + 1] = checked((byte)Math.Round(c.Middle.Duty * 255.0 / 100));
            b[pointOffset + 2] = checked((byte)c.High.Temperature);
            b[pointOffset + 3] = checked((byte)Math.Round(c.High.Duty * 255.0 / 100));
            var p = new[] { c.First, c.Middle, c.High, c.Last };
            for (int i = 0; i < 3; i++)
            {
                if (p[i + 1].Temperature <= p[i].Temperature) throw new ArgumentException("Неверный порядок температур.");
                int slope = checked((int)Math.Round((p[i + 1].Duty - p[i].Duty) * 2.55 * 16 / (p[i + 1].Temperature - p[i].Temperature)));
                if (slope < 0 || slope > ushort.MaxValue) throw new ArgumentException("Неверный наклон кривой.");
                b[slopeOffset + 2 * i] = (byte)(slope >> 8); b[slopeOffset + 2 * i + 1] = (byte)slope;
            }
        }
        Write(cpu, 2, 14); Write(gpu, 6, 20);
        // Unknown third channel remains zero, as in the factory application's 256-byte package.
        return b;
    }
}
public sealed class ProfilePolicy
{
    public Profile Selected { get; private set; } = Profile.Work;
    public bool? OnAc { get; private set; }
    private DateTimeOffset? busySince, idleSince;
    private bool automaticGame;
    public Profile PowerChanged(bool ac)
    {
        if (OnAc != ac) { Selected = ac ? Profile.Work : Profile.Battery; ClearAuto(); }
        OnAc = ac; return Selected;
    }
    public Profile Select(Profile profile)
    {
        if (OnAc != true && profile != Profile.Battery) throw new InvalidOperationException("Этот профиль доступен только от сети.");
        if (OnAc == true && profile == Profile.Battery) throw new InvalidOperationException("Профиль АКБ включается при отключении кабеля.");
        ClearAuto(); return Selected = profile;
    }
    public Profile? AutoSport(bool enabled, double cpuLoad, DateTimeOffset now)
    {
        if (!enabled || OnAc != true || !double.IsFinite(cpuLoad))
        {
            if (automaticGame) { ClearAuto(); Selected = Profile.Work; return Selected; }
            busySince = idleSince = null; return null;
        }
        if (Selected == Profile.Work && cpuLoad >= 80)
        {
            busySince ??= now;
            if (now - busySince >= TimeSpan.FromSeconds(15)) { Selected = Profile.Game; automaticGame = true; busySince = null; return Selected; }
        }
        else busySince = null;
        if (automaticGame && cpuLoad < 25)
        {
            idleSince ??= now;
            if (now - idleSince >= TimeSpan.FromSeconds(45)) { ClearAuto(); Selected = Profile.Work; return Selected; }
        }
        else idleSince = null;
        return null;
    }
    private void ClearAuto() { automaticGame = false; busySince = idleSince = null; }
}
