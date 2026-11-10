$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$ilspy = Join-Path $root 'research/tooling/ilspycmd/tools/net8.0/any/ilspycmd.dll'
$targets = [ordered]@{
    DCHUService = 'research/stock/extracted/DefaultComponent/DCHUService.exe'
    FanSpeedSetting = 'research/stock/apps/FanSpeedSetting/FanSpeedSetting/FanSpeedSetting.exe'
    FnKey = 'research/stock/apps/FnKey/FnKey/FnKey.exe'
    ControlCenter30 = 'research/stock/apps/CC30/ControlCenter30/ControlCenter30.exe'
    BatteryPackUtility = 'research/stock/apps/BatteryUtility/CC/BatteryPackUtility.exe'
    EnergySave = 'research/stock/apps/EnergySave/DesktopBridge_EnergySave/DesktopBridge_EnergySave.exe'
    LedKeyboardSetting = 'research/stock/apps/Keyboard/CC/LedKeyboardSetting.exe'
    CPUOC = 'research/stock/apps/CPU_OC/CPUOC_Loading/CPUOC2.0.exe'
    GPUOverclocking = 'research/stock/apps/GPUOverclocking/GPUOverclocking/GPUOverclocking.exe'
}
$results = foreach ($target in $targets.GetEnumerator()) {
    $source = Join-Path $root $target.Value
    $out = Join-Path $root "research/decompiled/$($target.Key)"
    New-Item -ItemType Directory -Force $out | Out-Null
    $log = Join-Path $out 'ilspy.log'
    & dotnet $ilspy -p -o $out $source *> $log
    $exitCode = $LASTEXITCODE
    $files = @(Get-ChildItem $out -Recurse -File -Filter '*.cs')
    [pscustomobject]@{name=$target.Key; source=$target.Value; sha256=(Get-FileHash $source -Algorithm SHA256).Hash.ToLowerInvariant(); exitCode=$exitCode; csFiles=$files.Count}
    Write-Host "Decompiled: $($target.Key), exit=$exitCode, C# files=$($files.Count)"
}
$results | ConvertTo-Json -Depth 4 | Set-Content (Join-Path $root 'research/decompiled/manifest.json') -Encoding utf8
if (@($results | Where-Object exitCode -ne 0).Count) { throw 'Some modules failed: see manifest and logs.' }
