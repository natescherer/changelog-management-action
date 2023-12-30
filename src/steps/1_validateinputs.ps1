if (($env:INPUT_MODE -ne "addchange") -and $env:INPUT_CHANGETYPE) {
    Write-Host "You cannot use 'changeType' without mode 'addchange'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -ne "addchange") -and $env:INPUT_CHANGEVALUE) {
    Write-Host "You cannot use 'changeValue' without mode 'addchange'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -eq "addchange") -and ((!$env:INPUT_CHANGEVALUE) -or (!$env:INPUT_CHANGETYPE))) {
    Write-Host "Mode 'addchange' requires inputs 'changeType' and 'changeValue'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -eq "release") -and (!$env:INPUT_RELEASEVERSION)) {
    Write-Host "Mode 'release' requires input 'releaseVersion'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -eq "release") -and (!$env:INPUT_LINKMODE) -and ($env:INPUT_LINKMODE -eq "GitHub" -or $env:INPUT_LINKMODE -eq "None")) {
    Write-Host "Mode 'release' requires input 'linkMode'."
    throw "Input validation error."
}
