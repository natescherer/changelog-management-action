function Set-ActionsEnvironmentVariable {
    [CmdletBinding()]
    param(
        [parameter(Mandatory = $true)]
        [string]$Name,
        [parameter(Mandatory = $false)]
        [string]$Value
    )

    Set-Item -Path "env:$Name" -Value $Value

    Out-File -InputObject "$Name=$Value" -FilePath $env:GITHUB_ENV -Encoding utf-8 -Append
}