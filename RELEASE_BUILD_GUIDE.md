# Release Build Guide

## Overview

This guide covers creating production-ready release builds for distribution.

## Pre-requisites

1. **Visual Studio 2022** with:
   - Windows SDK 10.0.26100.0
   - NuGet package manager

2. **Code Signing Certificate** (for store/sideload):
   - Obtain from Microsoft Partner Center or CA
   - Install to certificate store

## Build Steps

### 1. Update Version
```csharp
// FluentScan/Properties/AssemblyInfo.cs
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]

// FluentScan.Package/Package.appxmanifest
<Identity Version="1.0.0.0" />
```

### 2. Configure for Release
```
1. Solution Configuration: Release
2. Solution Platform: x64 (or ARM64 if needed)
3. Project > FluentScan Properties > Signing
4. Enable code signing or leave disabled for testing
```

### 3. Build Package
```
1. Right-click FluentScan.Package project
2. Publish > Create App Packages
3. Select: Sideloading or Store
4. Select: x64 and/or ARM64
5. Finish
```

### 4. Output Location
```
FluentScan.Package\bin\x64\Release\AppPackages\
  └─ FluentScan_1.0.0.0_x64_Debug_Test\
       ├─ FluentScan.msix
       └─ FluentScan.exe
```

## Verification

### Test Installation
```powershell
Add-AppxPackage -Path FluentScan.msix
```

### Verify Metadata
```powershell
(Get-Item FluentScan.exe).VersionInfo
```

## Store Submission

1. Upload MSIX to Partner Center
2. Complete store listing
3. Submit for certification
4. Wait for approval (typically 24-48 hours)

---

*For signing details, see SIGNING_GUIDE.md*