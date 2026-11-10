param([string]$Destination = (Join-Path $PSScriptRoot '../research/upstream'))
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path $Destination | Out-Null
$repositories = @(
    @('gigabyte-fan-battery-center', 'Ixmoon/Gigabyte-Fan-Battery-Center'),
    @('gigactl', 'smairio/gigactl'),
    @('clevo-fan-control', 'XiaoQing235/ClevoFanControl'),
    @('clevo-x370-control-center', 'jiyeguang25/Clevo-X370-Control-Center'),
    @('custom-clevo-controller', 'farukborann/custom-clevo-laptop-controller-windows-app'),
    @('clevopycc', 'F-19-F/ClevoPyCC'),
    @('clevo-thermald', 'samoylenkodmitry/clevo-thermald'),
    @('g-helper', 'seerge/g-helper'),
    @('tuxedo-control-center', 'tuxedocomputers/tuxedo-control-center'),
    @('nbfc-revive', 'UraniumDonut/nbfc-revive')
)
$manifest = foreach ($repository in $repositories) {
    $path = Join-Path $Destination $repository[0]
    $url = 'https://github.com/' + $repository[1] + '.git'
    if (-not (Test-Path (Join-Path $path '.git'))) {
        & git -c core.longpaths=true clone --depth 1 $url $path
        if ($LASTEXITCODE -ne 0) { throw "Clone failed: $url" }
    }
    $commit = & git -C $path rev-parse HEAD
    if ($LASTEXITCODE -ne 0) { throw "Cannot read revision: $path" }
    [pscustomobject]@{
        name = $repository[0]
        url = $url
        commit = "$commit"
        fetchedAt = [DateTimeOffset]::UtcNow.ToString('o')
        licenses = @(Get-ChildItem -LiteralPath $path -File | Where-Object Name -Match '^(LICENSE|COPYING|LICENCE)' | Select-Object -ExpandProperty Name)
    }
    Write-Host "Ready: $($repository[0]) $commit"
}
$manifest | ConvertTo-Json -Depth 4 | Set-Content (Join-Path $Destination '../sources.json') -Encoding utf8
