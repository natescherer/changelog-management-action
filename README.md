# Changelog Management GitHub Action

A GitHub action to parse and update changelogs in Keep a Changelog 1.0.0 format; built on the ChangelogManagement PowerShell module.

Provides management tasks for changelogs, including updating for a release, reading data, and adding new changes.

It is tested and runs on `windows-latest`, `ubuntu-latest`, and `macos-latest`.

## Usage

### Release

```yaml
jobs:
  Job:
    runs-on: windows-latest
    steps:
      - name: Update Changelog for Release
        uses: natescherer/changelog-management-action@v1.0.0
        with:
          mode: release
          releaseversion: 2.0.0
```

### Read Changelog Data

```yaml
jobs:
  Job:
    runs-on: windows-latest
    steps:
      - name: Read Changelog Data
        id: readchangelog
        uses: natescherer/changelog-management-action@v1.0.0
      - name: Echo Changelog Data
        run: |
          echo "${{ steps.readchangelog.outputs.lastversion }}"
          echo "${{ steps.readchangelog.outputs.releasenotes }}"
```

### Add New Change

```yaml
jobs:
  Job:
    runs-on: windows-latest
    steps:
      - name: Add Change
        uses: natescherer/changelog-management-action@v1.0.0
        with:
          mode: addchange
          changetype: added
          changevalue: Quantum entanglement
```

### Inputs

This Action defines the following formal inputs.

| Name | Req | Description
|-|-|-|
| **`path`** | false | Path to relative to the root of the project to a CHANGELOG.md file in Keep a Changelog 1.0.0 format. Defaults to CHANGELOG.md in the root of the project.
| **`mode`** | false | Mode for the action. Should be one of `readdata`, `release`, or `addchange`. Defaults to `readdata`.
| **`releaseversion`** | false | Version number to use when updating a changelog for release. Only valid for mode `release`.
| **`changetype`** | false | Type of change to add. Should be one of `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, or `Security`. Only valid for mode `addchange`.
| **`changevalue`** | false | Data for the change to add. Should be a single line string.  Only valid for mode `addchange`.

### Outputs

This Action defines the following formal outputs.

| Name | Description
|-|-|
| **`lastversion`** | The version number of the latest release in the changelog.
| **`releasenotes`** | Release notes composed of changes from the most recent release.

## Authors

**Nate Scherer** - *Initial work* - [natescherer](https://github.com/natescherer)

## License

This project is licensed under The MIT License - see [LICENSE](LICENSE) for details.
