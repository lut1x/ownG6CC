using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using Microsoft.Win32;

const string SupportedModel = "G6 MF";
const string ExDchuHash = "dab807b5d4a621893ef5c5c1941e9d8ce91dda6b2518e931f4bb4727dfd80e98";
const string StockWorkerHash = "1dbfe2b5b886a5f1a9c2058d63eb0bbaabb0f81a1d9d52afbef4dd62f13366f2";

if (args.Length == 0 || args[0] is "-h" or "--help")
{
    Console.WriteLine("""
        G6 GPU Power Experiment

        Безопасная проверка возможностей:
          G6GpuPowerExperiment probe --dchu <путь-к-InsydeDCHU.dll>

        Экспериментальное отключение/включение RTX штатным worker'ом:
          G6GpuPowerExperiment off --dchu <dll> --worker <cc30wk.exe> --confirm
          G6GpuPowerExperiment on  --dchu <dll> --worker <cc30wk.exe> --confirm

        Команды off/on запускают только оригинальный cc30wk.exe с аргументами
        0x0013 0 или 0x0013 1. Они доступны лишь после подтверждённой поддержки
        отключения NVIDIA. Перед off закрой приложения, использующие RTX.
        """);
    return;
}

var command = args[0].ToLowerInvariant();
var dchuPath = Option("--dchu");
if (dchuPath is null)
    throw new ArgumentException("Укажи путь к проверенной InsydeDCHU.dll через --dchu.");

var result = Probe(dchuPath);
Console.WriteLine($"Модель: {result.Model}");
Console.WriteLine($"Версия списка возможностей: {result.FeatureVersionMajor}.{result.FeatureVersionMinor}");
Console.WriteLine($"Аппаратный MUX (iGPU/dGPU): {(result.SupportsMux ? "да" : "нет")}");
Console.WriteLine($"Штатное отключение питания NVIDIA: {(result.SupportsNvidiaPowerOff ? "да" : "нет")}");

if (command == "probe") return;
if (command is not ("off" or "on")) throw new ArgumentException("Команда: probe, off или on.");
if (!result.SupportsNvidiaPowerOff)
    throw new InvalidOperationException("Прошивка не объявила поддержку штатного отключения NVIDIA. Команда не отправлена.");
if (!args.Contains("--confirm", StringComparer.Ordinal))
    throw new InvalidOperationException("Добавь --confirm только после закрытия программ, использующих RTX.");

var worker = Option("--worker") ?? throw new ArgumentException("Для off/on укажи исходный cc30wk.exe через --worker.");
if (!File.Exists(worker) || !Path.GetFileName(worker).Equals("cc30wk.exe", StringComparison.OrdinalIgnoreCase))
    throw new ArgumentException("--worker должен указывать на исходный файл cc30wk.exe из штатной установки.");
var workerHash = Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(worker)));
if (!workerHash.Equals(StockWorkerHash, StringComparison.OrdinalIgnoreCase))
    throw new InvalidOperationException("Хеш cc30wk.exe не совпадает с исследованным штатным worker'ом; команда не отправлена.");

using var process = Process.Start(new ProcessStartInfo
{
    FileName = Path.GetFullPath(worker),
    Arguments = command == "off" ? "0x0013 0" : "0x0013 1",
    UseShellExecute = true,
    WorkingDirectory = Path.GetDirectoryName(Path.GetFullPath(worker))!
}) ?? throw new InvalidOperationException("Не удалось запустить штатный worker.");
process.WaitForExit();
if (process.ExitCode != 0) throw new InvalidOperationException($"Штатный worker завершился с кодом {process.ExitCode}.");
Console.WriteLine(command == "off"
    ? "Запрошено штатное отключение питания RTX. Проверь, что диспетчер задач больше не показывает нагрузку GPU NVIDIA."
    : "Запрошено штатное включение питания RTX.");

string? Option(string name)
{
    var index = Array.IndexOf(args, name);
    return index >= 0 && index + 1 < args.Length ? args[index + 1] : null;
}

static FeatureProbe Probe(string dchuPath)
{
    var model = Registry.GetValue(@"HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemProductName", "")?.ToString() ?? "";
    if (!model.Equals(SupportedModel, StringComparison.Ordinal))
        throw new InvalidOperationException($"Утилита предназначена только для {SupportedModel}; обнаружено: {model}.");

    dchuPath = Path.GetFullPath(dchuPath);
    if (!File.Exists(dchuPath)) throw new FileNotFoundException("Не найдена InsydeDCHU.dll.", dchuPath);
    var hash = Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(dchuPath)));
    if (!hash.Equals(ExDchuHash, StringComparison.OrdinalIgnoreCase))
        throw new InvalidOperationException("Хеш InsydeDCHU.dll не совпадает с исследованной версией; запрос не выполнен.");

    var library = NativeLibrary.Load(dchuPath);
    try
    {
        var address = NativeLibrary.GetExport(library, "SetDCHU_DataEx");
        var request = Marshal.GetDelegateForFunctionPointer<SetDataEx>(address);
        var input = new byte[256];
        var output = new byte[4096];
        input[0] = 8; // OEM feature-list query: command 4, subcommand 8.
        var inputPin = GCHandle.Alloc(input, GCHandleType.Pinned);
        var outputPin = GCHandle.Alloc(output, GCHandleType.Pinned);
        try
        {
            if (request(4, inputPin.AddrOfPinnedObject(), input.Length, outputPin.AddrOfPinnedObject()) != 4)
                throw new IOException("Контроллер не подтвердил безопасный запрос списка возможностей.");
        }
        finally
        {
            outputPin.Free();
            inputPin.Free();
        }

        // Feature-list format is reconstructed from the matching OEM FnKey application.
        var version = (output[0] << 8) | output[1];
        var supportsMux = version == 0x0100 && (output[18] & 0x01) != 0;
        var supportsNvidiaPowerOff = version == 0x0100 && (output[19] & 0x40) != 0;
        return new FeatureProbe(model, output[0], output[1], supportsMux, supportsNvidiaPowerOff);
    }
    finally { NativeLibrary.Free(library); }
}

[UnmanagedFunctionPointer(CallingConvention.Winapi)]
delegate int SetDataEx(int command, IntPtr input, int inputLength, IntPtr output);

sealed record FeatureProbe(string Model, byte FeatureVersionMajor, byte FeatureVersionMinor, bool SupportsMux, bool SupportsNvidiaPowerOff);
