Write-Host "Reading changelog data..."

$ResolvedPath = "$env:GITHUB_WORKSPACE\$env:INPUT_PATH"

$Data = Get-ChangelogData -Path $ResolvedPath

. "$env:GITHUB_ACTION_PATH\src\functions\ConvertTo-ActionsEscapedString.ps1"

$SafeVersion = ConvertTo-ActionsEscapedString -String $Data.LastVersion
$SafeNotes = ConvertTo-ActionsEscapedString -String $Data.ReleaseNotes

"lastVersion=$SafeVersion" | Out-File -FilePath $env:GITHUB_OUTPUT -Encoding utf-8 -Append
"releaseNotes=$SafeNotes" | Out-File -FilePath $env:GITHUB_OUTPUT -Encoding utf-8 -Append