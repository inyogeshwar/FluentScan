# Installation Guide

## Microsoft Store (Recommended)

The easiest way to install FluentScan is from the Microsoft Store:

1. Open Microsoft Store
2. Search for "FluentScan"
3. Click Install
4. Launch from Start menu

## Direct Download (MSIX)

For sideloading or testing:

### Prerequisites
- Windows 10 version 1903 or later
- Developer mode enabled (for sideloading)

### Installation Steps

1. Download the MSIX package
2. Double-click to install
3. If prompted, enable sideloading in Settings

## Build from Source

### Prerequisites
- Visual Studio 2022 Community
- Windows SDK 10.0.26100.0
- .NET 8.0 SDK

### Build Steps
```
1. Clone: git clone https://github.com/inyogeshwar/FluentScan.git
2. Open: FluentScan.sln
3. Build: Ctrl+Shift+B
4. Run: F5
```

### Creating Release Package
```
1. Set configuration to Release
2. Build FluentScan.Package project
3. Locate MSIX in: bin\x64\Release\AppPackages
```

## Post-Installation

### First Run Setup
1. Launch FluentScan
2. Allow scanner permissions
3. Configure save location (optional)

### Troubleshooting

**App won't install:**
- Enable Developer Mode in Windows Settings
- Check Windows version (needs 1903+)

**Scanner not detected:**
- See [Troubleshooting Guide](troubleshooting.md)

---

## Updates

- **Store**: Automatic updates enabled
- **Direct**: Re-download latest version
- **Sideloaded**: Check for updates manually