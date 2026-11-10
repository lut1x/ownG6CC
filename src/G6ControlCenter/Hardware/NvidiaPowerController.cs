using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using Microsoft.Win32;

namespace G6ControlCenter.Hardware;

/// <summary>Uses the stock G6 MF power-saving path, never Device Manager.</summary>
public sealed class NvidiaPowerController
{
    private const string ExpectedDchuHash = "dab807b5d4a621893ef5c5c1941e9d8ce91dda6b2518e931f4bb4727dfd80e98";
    private const string ExpectedWorkerHash = "1dbfe2b5b886a5f1a9c2058d63eb0bbaabb0f81a1d9d52afbef4dd62f13366f2";
    private readonly string dchuPath = Path.Combine(AppContext.BaseDirectory, "vendor", "InsydeDCHU.dll");
    private readonly string workerPath = Path.Combine(AppContext.BaseDirectory, "vendor", "cc30wk.exe");

    [UnmanagedFunctionPointer(CallingConvention.Winapi)] private delegate int SetDataEx(int command, IntPtr input, int length, IntPtr output);

    public bool IsSupported()
    {
        string model = Registry.GetValue(@"HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemProductName", "")?.ToString() ?? "";
        if (model != "G6 MF") return false;
        Verify(dchuPath, ExpectedDchuHash, "Аппаратный модуль");
        IntPtr library = NativeLibrary.Load(dchuPath);
        try
        {
            var request = Marshal.GetDelegateForFunctionPointer<SetDataEx>(NativeLibrary.GetExport(library, "SetDCHU_DataEx"));
            var input = new byte[256]; input[0] = 8;
            var output = Enumerable.Repeat((byte)0xa5, 4096).ToArray();
            var a = GCHandle.Alloc(input, GCHandleType.Pinned); var b = GCHandle.Alloc(output, GCHandleType.Pinned);
            try
            {
                if (request(4, a.AddrOfPinnedObject(), input.Length, b.AddrOfPinnedObject()) != 4) return false;
            }
            finally { b.Free(); a.Free(); }
            return output[0] == 1 && output[1] == 0 && (output[19] & 0x40) != 0;
        }
        finally { NativeLibrary.Free(library); }
    }

    public void SetPowered(bool on)
    {
        if (!IsSupported()) throw new InvalidOperationException("Прошивка не подтвердила штатное отключение питания NVIDIA.");
        Verify(workerPath, ExpectedWorkerHash, "Штатный компонент NVIDIA");
        using var worker = Process.Start(new ProcessStartInfo
        {
            FileName = workerPath,
            Arguments = on ? "0x0013 1" : "0x0013 0",
            UseShellExecute = true,
            WorkingDirectory = Path.GetDirectoryName(workerPath)!
        }) ?? throw new InvalidOperationException("Не удалось запустить штатный компонент NVIDIA.");
        worker.WaitForExit();
        if (worker.ExitCode != 0) throw new IOException($"Штатный компонент NVIDIA завершился с кодом {worker.ExitCode}.");
    }

    private static void Verify(string path, string expected, string name)
    {
        if (!File.Exists(path)) throw new FileNotFoundException($"{name} не найден. Установи полную portable-версию.", path);
        string actual = Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(path)));
        if (!actual.Equals(expected, StringComparison.OrdinalIgnoreCase))
            throw new InvalidOperationException($"{name} изменён. Отключение RTX заблокировано до повторной проверки совместимости.");
    }
}
