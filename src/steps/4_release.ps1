Write-Host "Updating changelog for release..."

$ResolvedPath = "$env:GITHUB_WORKSPACE\$env:INPUT_PATH"

Update-Changelog -Path $ResolvedPath -ReleaseVersion $env:INPUT_RELEASEVERSION -LinkMode "GitHub"