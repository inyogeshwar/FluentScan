$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$appAssets = Join-Path $repo "FluentScan\Assets"
$pkgAssets = Join-Path $repo "FluentScan.Package\Assets"

$themes = @{
    "contrast-standard" = @{ primary="#383f45"; secondary="#606971"; accent="#0078D4"; surface="#F7F9FB"; tile="#F3F6F8"; text="#202428"; hc=$false }
    "contrast-white"    = @{ primary="#383f45"; secondary="#5e676e"; accent="#0078D4"; surface="#FFFFFF"; tile="#F7F9FB"; text="#202428"; hc=$false }
    "contrast-black"    = @{ primary="#c4c8cc"; secondary="#899097"; accent="#60CDFF"; surface="#1F2327"; tile="#202428"; text="#F7F9FB"; hc=$false }
    "contrast-high"     = @{ primary="#FFFFFF"; secondary="#FFFFFF"; accent="#FFFFFF"; surface="#000000"; tile="#000000"; text="#FFFFFF"; hc=$true }
}

function Ensure-Dir($path) {
    if (!(Test-Path -LiteralPath $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
    }
}

function Write-TextFile($path, $content) {
    Ensure-Dir (Split-Path -Parent $path)
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
}

function New-FullLogoSvg($theme) {
    if ($theme.hc) {
        return @"
<svg xmlns="http://www.w3.org/2000/svg" width="450" height="450" viewBox="0 0 450 450" role="img" aria-label="FluentScan logo">
  <path d="M132 66h142l58 58v260H132z" fill="none" stroke="$($theme.primary)" stroke-width="24" stroke-linejoin="round"/>
  <path d="M274 66v66h58" fill="none" stroke="$($theme.primary)" stroke-width="24" stroke-linejoin="round"/>
  <path d="M104 220h242" fill="none" stroke="$($theme.primary)" stroke-width="24" stroke-linecap="round"/>
  <path d="M154 168h100M154 284h142" fill="none" stroke="$($theme.primary)" stroke-width="18" stroke-linecap="round"/>
</svg>
"@
    }
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="450" height="450" viewBox="0 0 450 450" role="img" aria-label="FluentScan logo">
  <defs>
    <linearGradient id="page" x1="112" x2="332" y1="64" y2="386" gradientUnits="userSpaceOnUse">
      <stop offset="0" stop-color="$($theme.surface)"/>
      <stop offset="1" stop-color="$($theme.secondary)" stop-opacity=".18"/>
    </linearGradient>
  </defs>
  <path d="M126 70h148l58 58v250c0 13-10 23-23 23H126c-13 0-23-10-23-23V93c0-13 10-23 23-23z" fill="url(#page)" stroke="$($theme.primary)" stroke-width="18" stroke-linejoin="round"/>
  <path d="M274 72v61h58" fill="none" stroke="$($theme.secondary)" stroke-width="16" stroke-linejoin="round"/>
  <path d="M152 164h106M152 286h138" fill="none" stroke="$($theme.secondary)" stroke-width="18" stroke-linecap="round" opacity=".82"/>
  <path d="M88 221h274" fill="none" stroke="$($theme.accent)" stroke-width="22" stroke-linecap="round"/>
  <path d="M111 221h228" fill="none" stroke="#FFFFFF" stroke-width="5" stroke-linecap="round" opacity=".45"/>
  <path d="M120 126v-24c0-9 7-16 16-16h24M330 324v24c0 9-7 16-16 16h-24" fill="none" stroke="$($theme.accent)" stroke-width="12" stroke-linecap="round" opacity=".9"/>
</svg>
"@
}

function New-SmallLogoSvg($theme) {
    if ($theme.hc) {
        return @"
<svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" role="img" aria-label="FluentScan small logo">
  <path d="M13 5h15l7 7v27H13z" fill="none" stroke="$($theme.primary)" stroke-width="3.5" stroke-linejoin="round"/>
  <path d="M28 5v8h7" fill="none" stroke="$($theme.primary)" stroke-width="3.5" stroke-linejoin="round"/>
  <path d="M7 22h30" fill="none" stroke="$($theme.primary)" stroke-width="4" stroke-linecap="round"/>
</svg>
"@
    }
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" role="img" aria-label="FluentScan small logo">
  <path d="M12 5.5h16l6.5 6.5v26.5H12c-1.7 0-3-1.3-3-3v-27c0-1.7 1.3-3 3-3z" fill="$($theme.surface)" stroke="$($theme.primary)" stroke-width="3" stroke-linejoin="round"/>
  <path d="M28 6v7h7" fill="none" stroke="$($theme.secondary)" stroke-width="2.6" stroke-linejoin="round"/>
  <path d="M7 22h30" fill="none" stroke="$($theme.accent)" stroke-width="4" stroke-linecap="round"/>
  <path d="M14 16h10M14 29h15" fill="none" stroke="$($theme.secondary)" stroke-width="2.8" stroke-linecap="round" opacity=".8"/>
</svg>
"@
}

function New-SplashSvg($theme, $mode) {
    $label = if ($mode -eq "dark") { "Ready for focused scanning" } elseif ($mode -eq "high") { "High contrast concept" } else { "Quiet document capture for Windows" }
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="620" height="300" viewBox="0 0 620 300" role="img" aria-label="FluentScan splash screen concept">
  <rect width="620" height="300" rx="0" fill="transparent"/>
  <g transform="translate(92 74) scale(.34)" fill="none" stroke-linecap="round" stroke-linejoin="round">
    <path d="M126 70h148l58 58v250c0 13-10 23-23 23H126c-13 0-23-10-23-23V93c0-13 10-23 23-23z" fill="$($theme.surface)" stroke="$($theme.primary)" stroke-width="18"/>
    <path d="M274 72v61h58" stroke="$($theme.secondary)" stroke-width="16"/>
    <path d="M152 164h106M152 286h138" stroke="$($theme.secondary)" stroke-width="18" opacity=".82"/>
    <path d="M88 221h274" stroke="$($theme.accent)" stroke-width="22"/>
    <path d="M120 126v-24c0-9 7-16 16-16h24M330 324v24c0 9-7 16-16 16h-24" stroke="$($theme.accent)" stroke-width="12" opacity=".9"/>
  </g>
  <text x="260" y="132" font-family="Segoe UI, Arial, sans-serif" font-size="34" font-weight="600" fill="$($theme.text)">FluentScan</text>
  <text x="262" y="166" font-family="Segoe UI, Arial, sans-serif" font-size="14" fill="$($theme.secondary)">$label</text>
  <path d="M262 190h146" stroke="$($theme.accent)" stroke-width="4" stroke-linecap="round"/>
</svg>
"@
}

function New-EmptyStateSvg($theme, $kind) {
    $title = switch ($kind) {
        "no-scanner" { "No scanner selected" }
        "no-pages" { "No pages yet" }
        default { "Ready to export" }
    }
    $accentShape = switch ($kind) {
        "no-scanner" { '<path d="M122 154h196" stroke="{0}" stroke-width="10" stroke-linecap="round"/>' }
        "no-pages" { '<path d="M162 134h116M162 178h148" stroke="{0}" stroke-width="10" stroke-linecap="round"/>' }
        default { '<path d="M174 202l38 38 82-92" fill="none" stroke="{0}" stroke-width="16" stroke-linecap="round" stroke-linejoin="round"/>' }
    }
    $accentPath = [string]::Format($accentShape, $theme.accent)
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="420" height="260" viewBox="0 0 420 260" role="img" aria-label="$title">
  <rect width="420" height="260" fill="transparent"/>
  <rect x="108" y="38" width="204" height="176" rx="18" fill="$($theme.surface)" stroke="$($theme.primary)" stroke-width="8"/>
  <path d="M258 38v48h54" fill="none" stroke="$($theme.secondary)" stroke-width="8" stroke-linejoin="round"/>
  $accentPath
  <text x="210" y="246" text-anchor="middle" font-family="Segoe UI, Arial, sans-serif" font-size="18" font-weight="600" fill="$($theme.text)">$title</text>
</svg>
"@
}

function New-ToolbarIconSvg($theme, $name) {
    $stroke = $theme.primary
    $accent = $theme.accent
    $body = switch ($name) {
        "scan" { "<path d='M7 5h14l6 6v24H7z'/><path d='M21 5v7h7'/><path d='M4 21h28' stroke='$accent'/>" }
        "rotate" { "<path d='M10 11a10 10 0 1 1-1 13'/><path d='M10 11H4V5'/>" }
        "crop" { "<path d='M10 4v22h22'/><path d='M4 10h22v22'/>" }
        "export-pdf" { "<path d='M8 4h13l7 7v21H8z'/><path d='M21 4v8h7'/><path d='M12 24h12' stroke='$accent'/>" }
        "delete" { "<path d='M8 10h20'/><path d='M13 10v20h10V10'/><path d='M14 7h8'/>" }
        "scanner" { "<path d='M7 18h22v11H7z'/><path d='M11 7h14l3 11H8z'/><path d='M12 24h10' stroke='$accent'/>" }
        default { "<path d='M7 7h22v22H7z'/>" }
    }
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" role="img" aria-label="$name icon">
  <g fill="none" stroke="$stroke" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round">
    $body
  </g>
</svg>
"@
}

function New-BannerSvg($theme, $sizeName, $w, $h) {
    $iconScale = [Math]::Min($w, $h) / 520
    $tx = [int]($w * .08)
    $ty = [int]($h * .18)
    $ix = [int]($w * .68)
    $iy = [int]($h * .12)
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="$w" height="$h" viewBox="0 0 $w $h" role="img" aria-label="FluentScan $sizeName banner">
  <rect width="$w" height="$h" fill="$($theme.tile)"/>
  <path d="M0 $($h - 4)H$w" stroke="$($theme.accent)" stroke-width="8"/>
  <text x="$tx" y="$ty" font-family="Segoe UI, Arial, sans-serif" font-size="$([int]($h*.16))" font-weight="600" fill="$($theme.text)">FluentScan</text>
  <text x="$tx" y="$([int]($ty + $h*.14))" font-family="Segoe UI, Arial, sans-serif" font-size="$([int]($h*.055))" fill="$($theme.secondary)">Modern scanning for Windows</text>
  <g transform="translate($ix $iy) scale($iconScale)" fill="none" stroke-linecap="round" stroke-linejoin="round">
    <path d="M126 70h148l58 58v250c0 13-10 23-23 23H126c-13 0-23-10-23-23V93c0-13 10-23 23-23z" fill="$($theme.surface)" stroke="$($theme.primary)" stroke-width="18"/>
    <path d="M274 72v61h58" stroke="$($theme.secondary)" stroke-width="16"/>
    <path d="M152 164h106M152 286h138" stroke="$($theme.secondary)" stroke-width="18" opacity=".82"/>
    <path d="M88 221h274" stroke="$($theme.accent)" stroke-width="22"/>
    <path d="M120 126v-24c0-9 7-16 16-16h24M330 324v24c0 9-7 16-16 16h-24" stroke="$($theme.accent)" stroke-width="12" opacity=".9"/>
  </g>
</svg>
"@
}

function New-ScreenshotMockSvg($theme, $name, $caption) {
    return @"
<svg xmlns="http://www.w3.org/2000/svg" width="1920" height="1080" viewBox="0 0 1920 1080" role="img" aria-label="FluentScan $name screenshot mockup">
  <rect width="1920" height="1080" fill="$($theme.tile)"/>
  <rect x="160" y="98" width="1600" height="884" rx="12" fill="$($theme.surface)" stroke="$($theme.secondary)" stroke-width="2"/>
  <rect x="160" y="98" width="1600" height="56" rx="12" fill="$($theme.tile)"/>
  <circle cx="196" cy="126" r="7" fill="$($theme.secondary)"/>
  <circle cx="224" cy="126" r="7" fill="$($theme.secondary)"/>
  <circle cx="252" cy="126" r="7" fill="$($theme.secondary)"/>
  <rect x="192" y="198" width="272" height="728" rx="8" fill="$($theme.tile)" stroke="$($theme.secondary)" stroke-opacity=".35"/>
  <rect x="512" y="198" width="704" height="728" rx="8" fill="$($theme.surface)" stroke="$($theme.secondary)" stroke-opacity=".35"/>
  <rect x="1264" y="198" width="432" height="728" rx="8" fill="$($theme.tile)" stroke="$($theme.secondary)" stroke-opacity=".35"/>
  <text x="232" y="266" font-family="Segoe UI, Arial, sans-serif" font-size="34" font-weight="600" fill="$($theme.text)">FluentScan</text>
  <path d="M232 326h172M232 386h132M232 446h190" stroke="$($theme.secondary)" stroke-width="18" stroke-linecap="round" opacity=".65"/>
  <rect x="592" y="270" width="544" height="394" rx="10" fill="$($theme.tile)" stroke="$($theme.secondary)" stroke-opacity=".5"/>
  <path d="M690 462h348" stroke="$($theme.accent)" stroke-width="18" stroke-linecap="round"/>
  <path d="M1370 288h204M1370 358h246M1370 428h168" stroke="$($theme.secondary)" stroke-width="16" stroke-linecap="round" opacity=".7"/>
  <rect x="1368" y="736" width="196" height="54" rx="6" fill="$($theme.accent)"/>
  <text x="1466" y="771" text-anchor="middle" font-family="Segoe UI, Arial, sans-serif" font-size="20" font-weight="600" fill="#FFFFFF">Scan</text>
  <text x="960" y="1018" text-anchor="middle" font-family="Segoe UI, Arial, sans-serif" font-size="26" fill="$($theme.text)">$caption</text>
</svg>
"@
}

Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms

function ColorFromHex($hex, [int]$alpha = 255) {
    $h = $hex.TrimStart("#")
    return [System.Drawing.Color]::FromArgb($alpha, [Convert]::ToInt32($h.Substring(0,2),16), [Convert]::ToInt32($h.Substring(2,2),16), [Convert]::ToInt32($h.Substring(4,2),16))
}

function Draw-RoundedRect($g, $brush, $x, $y, $w, $h, $r) {
    $path = New-Object System.Drawing.Drawing2D.GraphicsPath
    $d = $r * 2
    $path.AddArc($x, $y, $d, $d, 180, 90)
    $path.AddArc($x + $w - $d, $y, $d, $d, 270, 90)
    $path.AddArc($x + $w - $d, $y + $h - $d, $d, $d, 0, 90)
    $path.AddArc($x, $y + $h - $d, $d, $d, 90, 90)
    $path.CloseFigure()
    $g.FillPath($brush, $path)
    $path.Dispose()
}

function Draw-BrandMark($g, $theme, [float]$cx, [float]$cy, [float]$size) {
    $primary = ColorFromHex $theme.primary
    $secondary = ColorFromHex $theme.secondary
    $accent = ColorFromHex $theme.accent
    $surface = ColorFromHex $theme.surface
    $penPrimary = New-Object System.Drawing.Pen($primary, [Math]::Max(2, $size * .055))
    $penSecondary = New-Object System.Drawing.Pen($secondary, [Math]::Max(1.6, $size * .038))
    $penAccent = New-Object System.Drawing.Pen($accent, [Math]::Max(2.2, $size * .065))
    $penPrimary.LineJoin = [System.Drawing.Drawing2D.LineJoin]::Round
    $penSecondary.LineJoin = [System.Drawing.Drawing2D.LineJoin]::Round
    $penAccent.StartCap = [System.Drawing.Drawing2D.LineCap]::Round
    $penAccent.EndCap = [System.Drawing.Drawing2D.LineCap]::Round
    $brushSurface = New-Object System.Drawing.SolidBrush($surface)
    $x = $cx - $size * .28
    $y = $cy - $size * .39
    $w = $size * .56
    $h = $size * .78
    Draw-RoundedRect $g $brushSurface $x $y $w $h ($size * .045)
    $g.DrawRectangle($penPrimary, $x, $y, $w, $h)
    $g.DrawLine($penSecondary, $x + $w * .72, $y, $x + $w, $y + $h * .18)
    $g.DrawLine($penSecondary, $x + $w * .72, $y, $x + $w * .72, $y + $h * .18)
    $g.DrawLine($penSecondary, $x + $w * .72, $y + $h * .18, $x + $w, $y + $h * .18)
    $g.DrawLine($penSecondary, $x + $w * .18, $y + $h * .30, $x + $w * .66, $y + $h * .30)
    $g.DrawLine($penSecondary, $x + $w * .18, $y + $h * .68, $x + $w * .78, $y + $h * .68)
    $g.DrawLine($penAccent, $cx - $size * .38, $cy, $cx + $size * .38, $cy)
    $penPrimary.Dispose(); $penSecondary.Dispose(); $penAccent.Dispose(); $brushSurface.Dispose()
}

function Write-Png($path, [int]$w, [int]$h, $theme, [string]$kind) {
    Ensure-Dir (Split-Path -Parent $path)
    $bmp = New-Object System.Drawing.Bitmap($w, $h, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::ClearTypeGridFit
    $transparentKinds = @("target", "altform")
    if ($transparentKinds -contains $kind) {
        $g.Clear([System.Drawing.Color]::Transparent)
    } else {
        $g.Clear((ColorFromHex $theme.tile))
    }
    if ($kind -eq "wide") {
        Draw-BrandMark $g $theme ($w * .30) ($h * .50) ([Math]::Min($h * .86, $w * .38))
        $font = New-Object System.Drawing.Font -ArgumentList @("Segoe UI", [single][Math]::Max(12, $h * .18), [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel)
        $brush = New-Object System.Drawing.SolidBrush((ColorFromHex $theme.text))
        $g.DrawString("FluentScan", $font, $brush, [float]($w * .48), [float]($h * .37))
        $font.Dispose(); $brush.Dispose()
    } elseif ($kind -eq "splash") {
        Draw-BrandMark $g $theme ($w * .40) ($h * .50) ([Math]::Min($h * .50, $w * .26))
        $font = New-Object System.Drawing.Font -ArgumentList @("Segoe UI", [single][Math]::Max(18, $h * .12), [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel)
        $brush = New-Object System.Drawing.SolidBrush((ColorFromHex $theme.text))
        $g.DrawString("FluentScan", $font, $brush, [float]($w * .52), [float]($h * .40))
        $font.Dispose(); $brush.Dispose()
    } else {
        Draw-BrandMark $g $theme ($w / 2) ($h / 2) ([Math]::Min($w, $h) * .78)
    }
    $bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
    $g.Dispose(); $bmp.Dispose()
}

$generated = New-Object System.Collections.Generic.List[string]

foreach ($themeName in $themes.Keys) {
    $theme = $themes[$themeName]
    $themeDir = Join-Path $appAssets $themeName
    Write-TextFile (Join-Path $themeDir "Logo.svg") (New-FullLogoSvg $theme)
    Write-TextFile (Join-Path $themeDir "Logo small.svg") (New-SmallLogoSvg $theme)
    $generated.Add("FluentScan/Assets/$themeName/Logo.svg")
    $generated.Add("FluentScan/Assets/$themeName/Logo small.svg")

    $splashScales = @{ "scale-100"=@(620,300); "scale-125"=@(775,375); "scale-150"=@(930,450); "scale-200"=@(1240,600); "scale-400"=@(2480,1200) }
    foreach ($scale in $splashScales.Keys) {
        $dims = $splashScales[$scale]
        Write-Png (Join-Path $themeDir "SplashScreen.$scale.png") $dims[0] $dims[1] $theme "splash"
        $generated.Add("FluentScan/Assets/$themeName/SplashScreen.$scale.png")
    }
}

Write-Png (Join-Path $appAssets "StoreLogo.png") 50 50 $themes["contrast-standard"] "tile"
Write-Png (Join-Path $appAssets "Square44x44Logo.png") 44 44 $themes["contrast-standard"] "tile"
Write-Png (Join-Path $appAssets "Square150x150Logo.png") 150 150 $themes["contrast-standard"] "tile"
Write-Png (Join-Path $appAssets "SmallTile.png") 71 71 $themes["contrast-standard"] "tile"
Write-Png (Join-Path $appAssets "LargeTile.png") 310 310 $themes["contrast-standard"] "tile"
Write-Png (Join-Path $appAssets "Wide310x150Logo.png") 310 150 $themes["contrast-standard"] "wide"
Write-Png (Join-Path $appAssets "SplashScreen.png") 620 300 $themes["contrast-standard"] "splash"
@(
    "FluentScan/Assets/StoreLogo.png",
    "FluentScan/Assets/Square44x44Logo.png",
    "FluentScan/Assets/Square150x150Logo.png",
    "FluentScan/Assets/SmallTile.png",
    "FluentScan/Assets/LargeTile.png",
    "FluentScan/Assets/Wide310x150Logo.png",
    "FluentScan/Assets/SplashScreen.png"
) | ForEach-Object { $generated.Add($_) }

$scaleSpecs = @{
    "LargeTile" = @{ base=@(310,310); scales=@(100,125,150,200,400); kind="tile" }
    "SmallTile" = @{ base=@(71,71); scales=@(100,125,150,200,400); kind="tile" }
    "Square150x150Logo" = @{ base=@(150,150); scales=@(100,125,150,200,400); kind="tile" }
    "Square44x44Logo" = @{ base=@(44,44); scales=@(100,125,150,200,400); kind="tile" }
    "StoreLogo" = @{ base=@(50,50); scales=@(100,125,150,200,400); kind="tile" }
    "Wide310x150Logo" = @{ base=@(310,150); scales=@(100,125,150,200,400); kind="wide" }
}

foreach ($themeName in $themes.Keys) {
    $theme = $themes[$themeName]
    $dir = Join-Path $pkgAssets $themeName
    foreach ($assetName in $scaleSpecs.Keys) {
        $spec = $scaleSpecs[$assetName]
        foreach ($scale in $spec.scales) {
            $w = [int][Math]::Round($spec.base[0] * $scale / 100)
            $h = [int][Math]::Round($spec.base[1] * $scale / 100)
            Write-Png (Join-Path $dir "$assetName.scale-$scale.png") $w $h $theme $spec.kind
            $generated.Add("FluentScan.Package/Assets/$themeName/$assetName.scale-$scale.png")
        }
    }
    foreach ($target in @(16,24,32,48,256)) {
        Write-Png (Join-Path $dir "Square44x44Logo.targetsize-$target.png") $target $target $theme "target"
        Write-Png (Join-Path $dir "Square44x44Logo.altform-unplated_targetsize-$target.png") $target $target $theme "altform"
        Write-Png (Join-Path $dir "Square44x44Logo.altform-lightunplated_targetsize-$target.png") $target $target $theme "altform"
        $generated.Add("FluentScan.Package/Assets/$themeName/Square44x44Logo.targetsize-$target.png")
        $generated.Add("FluentScan.Package/Assets/$themeName/Square44x44Logo.altform-unplated_targetsize-$target.png")
        $generated.Add("FluentScan.Package/Assets/$themeName/Square44x44Logo.altform-lightunplated_targetsize-$target.png")
    }
}

$conceptRoot = Join-Path $appAssets "Branding"
foreach ($themeName in $themes.Keys) {
    $theme = $themes[$themeName]
    Write-TextFile (Join-Path $conceptRoot "logos\$themeName-logo-concept.svg") (New-FullLogoSvg $theme)
    Write-TextFile (Join-Path $conceptRoot "logos\$themeName-logo-small-concept.svg") (New-SmallLogoSvg $theme)
    Write-TextFile (Join-Path $conceptRoot "splash\$themeName-splash-minimal.svg") (New-SplashSvg $theme $themeName)
    foreach ($kind in @("no-scanner", "no-pages", "export-ready")) {
        Write-TextFile (Join-Path $conceptRoot "empty-states\$themeName-empty-$kind.svg") (New-EmptyStateSvg $theme $kind)
    }
    foreach ($name in @("scan", "rotate", "crop", "export-pdf", "delete", "scanner")) {
        Write-TextFile (Join-Path $conceptRoot "toolbar\$themeName-toolbar-$name.svg") (New-ToolbarIconSvg $theme $name)
    }
    Write-TextFile (Join-Path $conceptRoot "banners\$themeName-store-feature-1400x560.svg") (New-BannerSvg $theme "store feature" 1400 560)
    Write-TextFile (Join-Path $conceptRoot "social\$themeName-github-social-preview-1280x640.svg") (New-BannerSvg $theme "GitHub social preview" 1280 640)
    foreach ($shot in @(
        @{name="main-window"; caption="Main workspace"},
        @{name="scan-options"; caption="Scan options"},
        @{name="page-preview"; caption="Page preview"},
        @{name="pdf-export"; caption="PDF export"},
        @{name="settings"; caption="Settings"}
    )) {
        Write-TextFile (Join-Path $conceptRoot "screenshots\$themeName-$($shot.name)-mockup.svg") (New-ScreenshotMockSvg $theme $shot.name $shot.caption)
    }
}

$generated | Sort-Object -Unique | Set-Content -Encoding UTF8 -LiteralPath (Join-Path $conceptRoot "generated-files.txt")
Write-Host "Generated $($generated.Count) runtime/package assets plus concept SVG sets under FluentScan\Assets\Branding."
