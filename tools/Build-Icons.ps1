$ErrorActionPreference='Stop'
Add-Type -AssemblyName System.Drawing
$projectRoot=Split-Path $PSScriptRoot -Parent
$assets=Join-Path $projectRoot 'src/G6ControlCenter/Assets'
$sources=Join-Path $projectRoot 'assets/icons'
New-Item -ItemType Directory -Force $assets,$sources | Out-Null
function New-FanBitmap([int]$Size,[string]$Color,[bool]$Tile) {
    $bitmap=[Drawing.Bitmap]::new($Size,$Size,[Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g=[Drawing.Graphics]::FromImage($bitmap)
    $g.SmoothingMode=[Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.PixelOffsetMode=[Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.ScaleTransform($Size/64.0,$Size/64.0)
    if($Tile) {
        $rounded=[Drawing.Drawing2D.GraphicsPath]::new()
        $rounded.AddArc(1,1,30,30,180,90);$rounded.AddArc(33,1,30,30,270,90)
        $rounded.AddArc(33,33,30,30,0,90);$rounded.AddArc(1,33,30,30,90,90);$rounded.CloseFigure()
        $bg=[Drawing.SolidBrush]::new([Drawing.ColorTranslator]::FromHtml('#171B23'))
        $g.FillPath($bg,$rounded);$bg.Dispose();$rounded.Dispose()
    }
    $blade=[Drawing.Drawing2D.GraphicsPath]::new()
    $blade.StartFigure();$blade.AddBezier(30,29,19,31,10,26,15,17)
    $blade.AddBezier(15,17,20,8,34,10,35,20);$blade.AddBezier(35,20,36,25,34,28,30,29);$blade.CloseFigure()
    $fill=[Drawing.SolidBrush]::new([Drawing.ColorTranslator]::FromHtml($Color))
    $outline=[Drawing.Pen]::new([Drawing.ColorTranslator]::FromHtml('#263344'),1.2)
    foreach($angle in @(0,120,240)) {
        $state=$g.Save();$g.TranslateTransform(32,32);$g.RotateTransform($angle);$g.TranslateTransform(-32,-32)
        $g.FillPath($fill,$blade);if(-not $Tile){$g.DrawPath($outline,$blade)};$g.Restore($state)
    }
    $hub=[Drawing.SolidBrush]::new([Drawing.ColorTranslator]::FromHtml('#EDF1F8'))
    $g.FillEllipse($fill,27,27,10,10);$g.FillEllipse($hub,30,30,4,4)
    $hub.Dispose();$fill.Dispose();$outline.Dispose();$blade.Dispose();$g.Dispose()
    return ,$bitmap
}
function Write-FanIcon([string]$Path,[string]$Color,[bool]$Tile) {
    $sizes=@(16,20,24,32,40,48,64,128,256)
    $frames=foreach($size in $sizes) {
        $bitmap=New-FanBitmap $size $Color $Tile
        $memory=[IO.MemoryStream]::new();$bitmap.Save($memory,[Drawing.Imaging.ImageFormat]::Png)
        [pscustomobject]@{size=$size;bytes=$memory.ToArray()};$memory.Dispose();$bitmap.Dispose()
    }
    $stream=[IO.File]::Create($Path);$writer=[IO.BinaryWriter]::new($stream)
    try {
        $writer.Write([uint16]0);$writer.Write([uint16]1);$writer.Write([uint16]$frames.Count)
        $offset=6+16*$frames.Count
        foreach($frame in $frames) {
            $dimension=if($frame.size -eq 256){0}else{$frame.size}
            $writer.Write([byte]$dimension);$writer.Write([byte]$dimension);$writer.Write([byte]0);$writer.Write([byte]0)
            $writer.Write([uint16]1);$writer.Write([uint16]32);$writer.Write([uint32]$frame.bytes.Length);$writer.Write([uint32]$offset)
            $offset+=$frame.bytes.Length
        }
        foreach($frame in $frames){$writer.Write([byte[]]$frame.bytes)}
    } finally {$writer.Dispose();$stream.Dispose()}
}
$palette=@{work='#81B0FF';game='#F2958D';battery='#76D6AC'}
Write-FanIcon (Join-Path $assets 'app.ico') $palette.work $true
foreach($key in @('work','game','battery')) {
    Write-FanIcon (Join-Path $assets "tray-$key.ico") $palette[$key] $false
    $tile=if($key -eq 'work'){'<rect x="1" y="1" width="62" height="62" rx="16" fill="#171B23"/>'}else{''}
    $svg=@"
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" role="img" aria-label="G6 Control $key">
$tile
<g fill="$($palette[$key])"><path id="blade" d="M30 29C19 31 10 26 15 17C20 8 34 10 35 20C36 25 34 28 30 29Z"/><use href="#blade" transform="rotate(120 32 32)"/><use href="#blade" transform="rotate(240 32 32)"/><circle cx="32" cy="32" r="5"/></g><circle cx="32" cy="32" r="2" fill="#EDF1F8"/>
</svg>
"@
    $svg | Set-Content (Join-Path $sources "$key.svg") -Encoding utf8
    $preview=New-FanBitmap 256 $palette[$key] ($key -eq 'work')
    $preview.Save((Join-Path $sources "$key.png"),[Drawing.Imaging.ImageFormat]::Png);$preview.Dispose()
}
Write-Host 'Generated original SVG, PNG and multi-resolution ICO icons.'
