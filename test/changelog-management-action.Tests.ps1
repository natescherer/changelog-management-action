$global:NL = [System.Environment]::NewLine

Describe 'mode readdata' {
    It 'lastVersion' {
        $Path = Join-Path "test" "read_lastVersion.txt"
        Get-Content -Path $Path -Raw | Should -Be "1.1.0"
    }
    It 'releaseNotes' {
        $Path = Join-Path "test" "read_releaseNotes.txt"
        Get-Content -Path $Path -Raw | Should -Be ("### Added$NL" +
            "- Released Addition 1$NL" +
            "- Released Addition 2")
    }
}

Describe 'mode release' {
    It 'lastVersion' {
        $Path = Join-Path "test" "release_lastVersion.txt"
        Get-Content -Path $Path -Raw | Should -Be "2.0.0"
    }
    It 'releaseNotes' {
        $Path = Join-Path "test" "release_releaseNotes.txt"
        Get-Content -Path $Path -Raw | Should -Be ("### Added$NL" +
            "- Unreleased Addition 1$NL" +
            "- Unreleased Addition 2")
    }
}

Describe 'mode addchange' {
    It 'lastVersion' {
        $Path = Join-Path "test" "add_lastVersion.txt"
        Get-Content -Path $Path -Raw | Should -Be "1.1.0"
    }
    It 'releaseNotes' {
        $Path = Join-Path "test" "add_releaseNotes.txt" 
        Get-Content -Path $Path -Raw | Should -Be ("### Added$NL" +
            "- Released Addition 1$NL" +
            "- Released Addition 2")
    }
    It 'Unreleased Section' {
        $Path = Join-Path "test" "CHANGELOG_add.md"
        Get-Content -Path $Path -Raw | Should -Match ("### Added$NL" +
            "- New Unreleased Addition$NL" +
            "- Unreleased Addition 1$NL" +
            "- Unreleased Addition 2")
    }
}