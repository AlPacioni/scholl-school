$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$domain = 'https://bremerhaven-werftgeschichte.de'
$errors = @()

$files = Get-ChildItem -Path $root -Filter *.html -File
foreach ($file in $files) {
  $text = Get-Content -Path $file.FullName -Raw
  if ($text -match 'example.com') {
    $errors += "$($file.Name): enth?lt example.com"
  }
  if ($text -notmatch 'lang="de"') {
    $errors += "$($file.Name): lang=de fehlt"
  }
  if ($text -notmatch '<meta charset="UTF-8"') {
    $errors += "$($file.Name): charset UTF-8 fehlt"
  }
  if ($text -notmatch [regex]::Escape($domain)) {
    $errors += "$($file.Name): Domain fehlt"
  }
}

if (Test-Path -Path (Join-Path $root 'assets/js/analytics.js')) {
  $errors += 'analytics.js existiert noch'
}

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Host $_ -ForegroundColor Red }
  exit 1
}

Write-Host 'Validation OK' -ForegroundColor Green
