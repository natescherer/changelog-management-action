if (!(Get-InstalledModule -Name ChangelogManagement -ErrorAction SilentlyContinue)) {
    Write-Host "Installing ChangelogManagement PowerShell Module..."
    Register-PSRepository -Name PoshTestGallery -SourceLocation "https://www.poshtestgallery.com/api/v2/" -InstallationPolicy Trusted
    Install-Module -Name ChangelogManagement -Repository PoshTestGallery -AllowPrerelease
}