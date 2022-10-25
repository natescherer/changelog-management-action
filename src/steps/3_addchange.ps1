Write-Host "Adding Change..."

$ResolvedPath = Join-Path $env:GITHUB_WORKSPACE $env:INPUT_PATH

Add-ChangelogData -Path $ResolvedPath -Type $env:INPUT_CHANGETYPE -Value $env:INPUT_CHANGEVALUE