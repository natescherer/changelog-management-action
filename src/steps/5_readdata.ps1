Write-Host "Reading changelog data..."

$ResolvedPath = Join-Path $env:GITHUB_WORKSPACE $env:INPUT_PATH

$Data = Get-ChangelogData -Path $ResolvedPath

"lastVersion=$($Data.LastVersion)" | Out-File -FilePath $env:GITHUB_OUTPUT -Encoding utf-8 -Append
"releaseNotes=$($Data.ReleaseNotes)" | Out-File -FilePath $env:GITHUB_OUTPUT -Encoding utf-8 -Append