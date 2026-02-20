param(
  [string]$Root = "$(Split-Path -Parent $PSScriptRoot)"
)

$errors = @()
$htmlFiles = Get-ChildItem $Root -Filter *.html
foreach ($file in $htmlFiles) {
  $content = Get-Content $file.FullName -Raw
  if ($content -notmatch '<title>') { $errors += "$($file.Name): missing <title>" }
  if ($content -notmatch 'meta name="description"') { $errors += "$($file.Name): missing description meta" }
  if ($content -notmatch 'aria-label') { $errors += "$($file.Name): missing aria-label usage" }
}

$cssPath = Join-Path $Root 'assets/css/styles.css'
if (-not (Test-Path $cssPath)) { $errors += 'styles.css missing' }

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output "Lint checks passed for $($htmlFiles.Count) HTML files."
