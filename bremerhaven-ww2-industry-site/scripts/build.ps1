param(
  [string]$Root = "$(Split-Path -Parent $PSScriptRoot)"
)

$css = Get-Content (Join-Path $Root 'assets/css/styles.css') -Raw
$js = Get-Content (Join-Path $Root 'assets/js/main.js') -Raw

$cssMin = ($css -replace '/\*.*?\*/','' -replace '\s+',' ').Trim()
$jsMin = ($js -replace '/\*.*?\*/','' -replace '\s+',' ').Trim()

Set-Content (Join-Path $Root 'assets/css/styles.min.css') $cssMin
Set-Content (Join-Path $Root 'assets/js/main.min.js') $jsMin

Write-Output 'Minified assets generated: styles.min.css, main.min.js'
