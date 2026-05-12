# Build Guide

## Prerequisites

| Requirement | Version | Notes |
|-------------|---------|-------|
| Visual Studio | 2022 Community+ | Required |
| Windows SDK | 10.0.26100.0 | Required |
| .NET SDK | 8.0+ | Required |

## Quick Build

### Visual Studio
1. Open `FluentScan.sln`
2. Set `FluentScan.Package` as startup project
3. Select configuration (Debug/Release)
4. Select platform (x86/x64/ARM64)
5. Build: Ctrl+Shift+B
6. Run: F5

### Command Line
```powershell
& "D:\VisualStudio\Community\Common7\IDE\devenv.com" FluentScan.sln /Build "Release|x64"
```

## Build Configurations

| Config | Purpose | Optimizations |
|--------|---------|---------------|
| Debug | Development | No optimization, symbols |
| Release | Production | Full optimization |
| x86 | 32-bit Windows | Compatible |
| x64 | 64-bit Windows | Recommended |
| ARM64 | ARM Windows | Surface Pro X |

## Output Locations

| Platform | Path |
|----------|------|
| Debug x86 | `FluentScan\bin\x86\Debug\FluentScan.exe` |
| Debug x64 | `FluentScan\bin\x64\Debug\FluentScan.exe` |
| Release x64 | `FluentScan\bin\x64\Release\FluentScan.exe` |
| Package | `FluentScan.Package\bin\x64\Release\AppPackages\` |

## Clean Build

```powershell
Remove-Item -Recurse FluentScan\bin, FluentScan\obj
Remove-Item -Recurse FluentScan.Package\bin, FluentScan.Package\obj
```

## Troubleshooting

**Error: SDK not found**
- Install Windows SDK 10.0.26100.0

**Error: Type universe cannot resolve**
- Clean and rebuild

**Error: Package signing failed**
- Certificate not installed (use Debug or disable signing)

---

*For release builds, see RELEASE_BUILD_GUIDE.md*