# Changelog Management GitHub Action

[![Tests Windows](https://raw.githubusercontent.com/gist/natescherer/6a1fa63e8575464b14542ed4b0804de8/raw/d41383962edc421f947c63605034a24bce04c14b/changelog-management-action_TestResults_Windows.md_badge.svg)](https://gist.github.com/natescherer/6a1fa63e8575464b14542ed4b0804de8)
[![Tests Linux](https://raw.githubusercontent.com/gist/natescherer/2c11b7439afdbb286f09c14887ba0117/raw/545f4d5d5dcc784c0415e578b415ebf980cb66b4/changelog-management-action_TestResults_Linux.md_badge.svg)](https://gist.github.com/natescherer/2c11b7439afdbb286f09c14887ba0117)
[![Tests macOS](https://raw.githubusercontent.com/gist/natescherer/7ca0b83966d78656c800de79b0aba983/raw/cf80a5bca86c91ee2bcce141b89ea2980714d2f8/changelog-management-action_TestResults_macOS.md_badge.svg)](https://gist.github.com/natescherer/7ca0b83966d78656c800de79b0aba983)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

A GitHub action to parse and update changelogs in Keep a Changelog 1.0.0 format; built on the ChangelogManagement PowerShell module.

Provides management tasks for changelogs, including updating for a release, reading data, and adding new changes.

It is tested and runs on `windows-latest`, `ubuntu-latest`, and `macos-latest`.

## Usage

### Release

```yaml
    steps:
      - name: Update Changelog for Release
        uses: natescherer/changelog-management-action@v1
        with:
          mode: release
          releaseVersion: 2.0.0
```

### Read Changelog Data

```yaml
    steps:
      - name: Read Changelog Data
        id: readchangelog
        uses: natescherer/changelog-management-action@v1
      - name: Echo Changelog Data
        run: |
          echo "${{ steps.readchangelog.outputs.lastVersion }}"
          echo "${{ steps.readchangelog.outputs.releaseNotes }}"
```

### Add New Change

```yaml
    steps:
      - name: Add Change
        uses: natescherer/changelog-management-action@v1
        with:
          mode: addchange
          changeType: added
          changeValue: Quantum entanglement
```

### Inputs

<!--(inputs-start)-->

| Name  | Required | Default | Description |
| :---: | :------: | :-----: | ----------- |
| `path` | false | CHANGELOG.md | Path to relative to the root of the project to a CHANGELOG.md file in Keep a Changelog 1.0.0 format. Defaults to CHANGELOG.md in the root of the project. |
| `mode` | false | readdata | Mode for the action. Should be one of `readdata`, `release`, or `addchange`. Defaults to `readdata`. |
| `releaseVersion` | false |  | Version number to use when updating a changelog for release. Only valid for mode `release`. |
| `changeType` | false |  | Type of change to add. Should be one of `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, or `Security`. Only valid for mode `addchange`. |
| `changeValue` | false |  | Data for the change to add. Should be a single line string.  Only valid for mode `addchange`. |

<!--(inputs-end)-->

### Outputs

<!--(outputs-start)-->

| Name  | Description |
| :---: | ----------- |
| `lastVersion` | The version number of the latest release in the changelog. |
| `releaseNotes` | Release notes composed of changes from the most recent release. |

<!--(outputs-end)-->

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center"><a href="https://www.linkedin.com/in/natescherer01/"><img src="https://avatars.githubusercontent.com/u/376408?v=4?s=100" width="100px;" alt="Nate Scherer"/><br /><sub><b>Nate Scherer</b></sub></a><br /><a href="https://github.com/natescherer/changelog-management-action/commits?author=natescherer" title="Code">💻</a> <a href="#infra-natescherer" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/natescherer/changelog-management-action/commits?author=natescherer" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://allcontributors.org) specification.
Contributions of any kind are welcome!

## License

This project is licensed under The MIT License - see [LICENSE](LICENSE) for details.
