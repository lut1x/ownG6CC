# One-shot, read-only diagnostic. No setter entry points are declared.
param([string]$Output = (Join-Path $PSScriptRoot '../research/local/read-only-snapshot.json'))
$ErrorActionPreference = 'Stop'
$dll = 'C:\Program Files (x86)\ControlCenter\DCHU\InsydeDCHU.dll'
$expected = '470d96cae14fef2823330c63ea683cf87cb0f6984dc4eb86d21420ff71be3299'
$bios = Get-ItemProperty 'HKLM:\HARDWARE\DESCRIPTION\System\BIOS'
if ($bios.SystemProductName -ne 'G6 MF') { throw 'This probe was inspected for G6 MF only.' }
if ((Get-FileHash -LiteralPath $dll -Algorithm SHA256).Hash -ne $expected) { throw 'DLL revision changed; inspect it first.' }
if (-not ('G6Research.ReadOnlyApi' -as [type])) {
    Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
namespace G6Research {
    public static class ReadOnlyApi {
        [DllImport(@"C:\Program Files (x86)\ControlCenter\DCHU\InsydeDCHU.dll", CallingConvention=CallingConvention.Winapi)]
        private static extern int GetDCHU_Data_Buffer(int command, IntPtr output);
        [DllImport(@"C:\Program Files (x86)\ControlCenter\DCHU\InsydeDCHU.dll", CallingConvention=CallingConvention.Winapi)]
        private static extern int GetDCHU_Data_Integer(int command, ref int output);
        [DllImport(@"C:\Program Files (x86)\ControlCenter\DCHU\InsydeDCHU.dll", CallingConvention=CallingConvention.Winapi)]
        private static extern int ReadAppSettings(int page, int offset, int length, IntPtr output);
        public static int ReadFeature(int command) {
            if (command!=16 && command!=70 && command!=96 && command!=122)
                throw new ArgumentOutOfRangeException(nameof(command));
            int value=int.MinValue;
            int result=GetDCHU_Data_Integer(command, ref value);
            // This export returns the value itself, unlike the buffer export's command echo.
            if (value==int.MinValue || result!=value) throw new InvalidOperationException("Feature read failed: "+command+", return="+result);
            return value;
        }
        public static byte[] Read(int id, bool settings) {
            // The inspected DLL appends a byte after ACPI buffer elements.
            // Keep more space than the native IOCTL's 0x420-byte reply.
            var block = new byte[4096];
            for (int i=0; i<block.Length; i++) block[i]=0xa5;
            var handle = GCHandle.Alloc(block, GCHandleType.Pinned);
            try {
                int result = settings ? ReadAppSettings(id, 0, 256, handle.AddrOfPinnedObject())
                                      : GetDCHU_Data_Buffer(id, handle.AddrOfPinnedObject());
                int expected = settings ? 4096 : id;
                if (result != expected) throw new InvalidOperationException("Read failed: id="+id+", settings="+settings+", return="+result);
                var payload = new byte[256];
                Array.Copy(block, payload, payload.Length);
                return payload;
            } finally { handle.Free(); }
        }
    }
}
'@
}
$telemetry = [G6Research.ReadOnlyApi]::Read(12, $false)
$capabilities = [G6Research.ReadOnlyApi]::Read(13, $false)
$page1 = [G6Research.ReadOnlyApi]::Read(1, $true)
$page4 = [G6Research.ReadOnlyApi]::Read(4, $true)
$page7 = [G6Research.ReadOnlyApi]::Read(7, $true)
$features = [ordered]@{}
foreach ($command in @(16,70,96,122)) {
    $value = [G6Research.ReadOnlyApi]::ReadFeature($command)
    $features["command$command"] = [pscustomobject]@{ value=$value; hex=('0x{0:X8}' -f $value) }
}
$count = $capabilities[12]
if ($count -lt 1 -or $count -gt 3) { throw "Unknown channel count: $count. Raw data not decoded." }
$fans = for ($i=0; $i -lt $count; $i++) {
    $tach = ([int]$telemetry[2+2*$i] -shl 8) + $telemetry[3+2*$i]
    [pscustomobject]@{
        channel=$i+1
        temperatureRaw=$telemetry[18+3*$i]
        dutyRaw=$telemetry[16+3*$i]
        dutyPercentOf255=[Math]::Round(100*$telemetry[16+3*$i]/255, 1)
        tachometerPeriod=$tach
        rpmFromStockFormula=$(if ($tach) { [Math]::Round(120/(5.565217391304348E-05*$tach)) } else { 0 })
    }
}
$snapshot = [pscustomobject]@{
    capturedAt=[DateTimeOffset]::UtcNow.ToString('o')
    model=$bios.SystemProductName
    bios=$bios.BIOSVersion
    dllSha256=$expected
    readOnly=$true
    fanCount=$count
    fans=@($fans)
    powerModeSetting=$page1[1]
    fanModeSetting=$page4[5]
    customFanAllowedByStockCheck=($count -gt 1 -and ($capabilities[43] -band 2) -eq 0)
    featureIntegers=$features
    settingsMayBeUninitialized=(@($page1 | Where-Object { $_ -ne 0 }).Count -eq 0 -and @($page4 | Where-Object { $_ -ne 0 }).Count -eq 0)
    raw=[pscustomobject]@{
        package12=[Convert]::ToHexString($telemetry)
        package13=[Convert]::ToHexString($capabilities)
        appSettingsPage1=[Convert]::ToHexString($page1)
        appSettingsPage4=[Convert]::ToHexString($page4)
        appSettingsPage7=[Convert]::ToHexString($page7)
    }
}
$parent = Split-Path $Output -Parent
New-Item -ItemType Directory -Force $parent | Out-Null
$snapshot | ConvertTo-Json -Depth 6 | Set-Content $Output -Encoding utf8
$snapshot | Select-Object capturedAt,model,bios,readOnly,fanCount,fans,powerModeSetting,fanModeSetting,customFanAllowedByStockCheck,featureIntegers,settingsMayBeUninitialized | ConvertTo-Json -Depth 5
