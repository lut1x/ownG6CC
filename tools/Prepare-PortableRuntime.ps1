$ErrorActionPreference='Stop'
$projectRoot=Split-Path $PSScriptRoot -Parent
$feed=Join-Path $projectRoot '.tools/nuget-feed'
New-Item -ItemType Directory -Force $feed | Out-Null
$version=(Get-ChildItem (Join-Path $projectRoot '.tools/dotnet/packs/Microsoft.NETCore.App.Ref') -Directory | Sort-Object { [version]$_.Name } -Descending | Select-Object -First 1).Name
foreach($id in @('microsoft.netcore.app.runtime.win-x64','microsoft.windowsdesktop.app.runtime.win-x64','microsoft.aspnetcore.app.runtime.win-x64','microsoft.net.illink.tasks')) {
    $name="$id.$version.nupkg"
    $destination=Join-Path $feed $name
    if(-not(Test-Path -LiteralPath $destination)) {
        $url="https://api.nuget.org/v3-flatcontainer/$id/$version/$name"
        & curl.exe -L --fail --silent --show-error --connect-timeout 15 --max-time 180 $url -o $destination
        if($LASTEXITCODE -ne 0){throw "Package download failed: $id"}
    }
    Write-Host "Ready: $name"
}
Get-ChildItem -LiteralPath $feed -File | ForEach-Object { [pscustomobject]@{file=$_.Name;sha512=(Get-FileHash -LiteralPath $_.FullName -Algorithm SHA512).Hash.ToLowerInvariant()} } | ConvertTo-Json | Set-Content (Join-Path $feed 'hashes.json') -Encoding utf8
