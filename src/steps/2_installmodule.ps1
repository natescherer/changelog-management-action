if (!(Get-InstalledModule -Name ChangelogManagement -ErrorAction SilentlyContinue)) {
    Write-Host "Installing ChangelogManagement PowerShell Module..."
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
    Install-Module -Name ChangelogManagement
}