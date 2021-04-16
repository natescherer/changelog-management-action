function ConvertTo-ActionsEscapedString {
    [CmdletBinding()]
    param(
        [parameter(Mandatory = $true)]
        [string]$String
    )

    $String = $String -replace "%","%25"
    $String = $String -replace "`r","%0D"
    $String = $String -replace "`n","%0A"

    $String
}