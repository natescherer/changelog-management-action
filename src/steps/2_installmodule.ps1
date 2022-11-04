if (!(Get-InstalledModule -Name ChangelogManagement -ErrorAction SilentlyContinue)) {
    Write-Host "Installing ChangelogManagement PowerShell Module..."
    Register-PSRepository -Name Cloudsmith -SourceLocation "https://nuget.cloudsmith.io/natescherer/changelogmanagement/v3/index.json" -InstallationPolicy Trusted
    Install-Module -Name ChangelogManagement -Repository Cloudsmith -AllowPrerelease
}