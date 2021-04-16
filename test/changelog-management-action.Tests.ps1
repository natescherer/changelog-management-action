$global:NL = [System.Environment]::NewLine

Describe 'mode readdata' {
    It 'lastversion' {
        Get-Content -Path "test\read_lastversion.txt" -Raw | Should -Be "1.1.0"
    }
    It 'releasenotes' {
        Get-Content -Path "test\read_releasenotes.txt" -Raw | Should -Be ("### Added$NL" +
            "- Released Addition 1$NL" +
            "- Released Addition 2")
    }
}

Describe 'mode release' {
    It 'lastversion' {
        Get-Content -Path "test\release_lastversion.txt" -Raw | Should -Be "2.0.0"
    }
    It 'releasenotes' {
        Get-Content -Path "test\release_releasenotes.txt" -Raw | Should -Be ("### Added$NL" +
            "- Unreleased Addition 1$NL" +
            "- Unreleased Addition 2")
    }
}