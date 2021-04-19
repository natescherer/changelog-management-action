if (($env:INPUT_MODE -ne "addchange") -and $env:INPUT_CHANGETYPE) {
    Write-Host "You cannot use 'changetype' without mode 'addchange'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -ne "addchange") -and $env:INPUT_CHANGEVALUE) {
    Write-Host "You cannot use 'changevalue' without mode 'addchange'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -eq "addchange") -and ((!$env:INPUT_CHANGEVALUE) -or (!$env:INPUT_CHANGETYPE))) {
    Write-Host "Mode 'addchange' requires inputs 'changetype' and 'changevalue'."
    throw "Input validation error."
}
if (($env:INPUT_MODE -eq "release") -and (!$env:INPUT_RELEASEVERSION)) {
    Write-Host "Mode 'release' requires input 'releaseversion'."
    throw "Input validation error."
}