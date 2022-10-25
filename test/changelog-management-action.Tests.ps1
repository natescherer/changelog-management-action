$global:NL = [System.Environment]::NewLine

Describe 'mode readdata' {
    It 'lastVersion' {
        Get-Content -Path "test\read_lastVersion.txt" -Raw | Should -Be "1.1.0"
    }
    It 'releaseNotes' {
        Get-Content -Path "test\read_releaseNotes.txt" -Raw | Should -Be ("### Added$NL" +
            "- Released Addition 1$NL" +
            "- Released Addition 2")
    }
}

Describe 'mode release' {
    It 'lastVersion' {
        Get-Content -Path "test\release_lastVersion.txt" -Raw | Should -Be "2.0.0"
    }
    It 'releaseNotes' {
        Get-Content -Path "test\release_releaseNotes.txt" -Raw | Should -Be ("### Added$NL" +
            "- Unreleased Addition 1$NL" +
            "- Unreleased Addition 2")
    }
}