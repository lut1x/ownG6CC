$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$bundles = Join-Path $root 'research/stock/bundles'
$apps = Join-Path $root 'research/stock/apps'
$result = foreach ($bundle in Get-ChildItem (Join-Path $root 'research/stock/extracted') -Recurse -File -Filter '*.appxbundle') {
    $out = Join-Path $bundles $bundle.BaseName
    New-Item -ItemType Directory -Force $out | Out-Null
    & tar.exe -xf $bundle.FullName -C $out
    if ($LASTEXITCODE -ne 0) { throw "Bundle extraction failed: $bundle" }
    [xml]$manifest = Get-Content (Join-Path $out 'AppxMetadata/AppxBundleManifest.xml') -Raw
    foreach ($package in $manifest.Bundle.Packages.Package | Where-Object { $_.Type -eq 'application' -and $_.Architecture -in @('x64', 'neutral') }) {
        $target = Join-Path $apps $bundle.BaseName
        New-Item -ItemType Directory -Force $target | Out-Null
        & tar.exe -xf (Join-Path $out $package.FileName) -C $target
        if ($LASTEXITCODE -ne 0) { throw "AppX extraction failed: $($package.FileName)" }
        [pscustomobject]@{ name=$bundle.BaseName; version=$package.Version; package=$package.FileName; path=$target }
        Write-Host "Extracted: $($bundle.BaseName) $($package.Version)"
    }
}
$result | ConvertTo-Json -Depth 4 | Set-Content (Join-Path $root 'research/stock/packages.json') -Encoding utf8
