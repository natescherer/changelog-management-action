if (!(Get-InstalledModule -Name ChangelogManagement -ErrorAction SilentlyContinue)) {
    Write-Host "Installing ChangelogManagement PowerShell Module..."
    Register-PSRepository -Name JFrog -SourceLocation "https://natescherer.jfrog.io/artifactory/api/nuget/nuget" -InstallationPolicy Trusted
    Install-Module -Name ChangelogManagement -Repository JFrog -AllowPrerelease
}