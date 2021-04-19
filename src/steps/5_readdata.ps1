Write-Host "Reading changelog data..."

$ResolvedPath = "$env:GITHUB_WORKSPACE\$env:INPUT_PATH"

$Data = Get-ChangelogData -Path $ResolvedPath

. "$env:GITHUB_ACTION_PATH\src\functions\ConvertTo-ActionsEscapedString.ps1"

$SafeVersion = ConvertTo-ActionsEscapedString -String $Data.LastVersion
$SafeNotes = ConvertTo-ActionsEscapedString -String $Data.ReleaseNotes

Write-Output -InputObject "::set-output name=lastversion::$SafeVersion"
Write-Output -InputObject "::set-output name=releasenotes::$SafeNotes"