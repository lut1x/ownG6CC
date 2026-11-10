param([switch]$Publish,[switch]$Portable,[string]$OutputDirectory='dist/G6ControlCenter')
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
$env:DOTNET_ROOT = Join-Path $projectRoot '.tools/dotnet'
$env:DOTNET_CLI_HOME = Join-Path $projectRoot '.tools/cli-home'
$env:DOTNET_CLI_TELEMETRY_OPTOUT = '1'
$env:DOTNET_SKIP_FIRST_TIME_EXPERIENCE = '1'
$env:DOTNET_GENERATE_ASPNET_CERTIFICATE = 'false'
$env:NUGET_PACKAGES = Join-Path $projectRoot '.tools/packages'
$dotnet = Join-Path $env:DOTNET_ROOT 'dotnet.exe'
if (-not (Test-Path $dotnet)) { throw 'Local SDK not found in .tools/dotnet.' }
$project = Join-Path $projectRoot 'src/G6ControlCenter/G6ControlCenter.csproj'
if ($Publish) {
    if($Portable) {
        $runtimeVersion=(Get-ChildItem (Join-Path $env:DOTNET_ROOT 'packs/Microsoft.NETCore.App.Ref') -Directory | Sort-Object {[version]$_.Name} -Descending | Select-Object -First 1).Name
        & $dotnet publish $project -c Release -r win-x64 --self-contained true -o (Join-Path $projectRoot $OutputDirectory) --source (Join-Path $projectRoot '.tools/nuget-feed') -p:RuntimeFrameworkVersion=$runtimeVersion -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:EnableCompressionInSingleFile=true -p:PublishTrimmed=false -p:DebugType=None -p:DebugSymbols=false -p:UseSharedCompilation=false
    } else {
        & $dotnet publish $project -c Release --no-self-contained -o (Join-Path $projectRoot $OutputDirectory) -p:UseSharedCompilation=false
    }
} else { & $dotnet build $project -c Release -p:UseSharedCompilation=false }
if ($LASTEXITCODE -ne 0) { throw 'Build failed.' }
if ($Publish) {
    $vendor = Join-Path (Join-Path $projectRoot $OutputDirectory) 'vendor'
    New-Item -ItemType Directory -Force $vendor | Out-Null
    $source = Join-Path $projectRoot 'research/stock/apps/FnKey/FnKey/InsydeDCHU.dll'
    if (Test-Path $source) { Copy-Item -LiteralPath $source -Destination $vendor }
    $bridge=Join-Path $vendor 'bridge'
    New-Item -ItemType Directory -Force $bridge | Out-Null
    Copy-Item -LiteralPath (Join-Path $projectRoot 'research/stock/extracted/DefaultComponent/InsydeDCHU.dll') -Destination $bridge
    Copy-Item -LiteralPath (Join-Path $projectRoot 'docs/APP-README.txt') -Destination (Join-Path (Join-Path $projectRoot $OutputDirectory) 'Прочитай меня.txt')
}
