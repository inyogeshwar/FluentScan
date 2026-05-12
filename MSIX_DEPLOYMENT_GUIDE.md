# MSIX Deployment Guide

## Package Types

### Store Package
- Submitted via Partner Center
- Automatic code signing
- Broad distribution
- Certification required

### Sideload Package
- Direct download/install
- Requires code signing
- Developer mode needed (optional with cert)
- Internal distribution

## Deployment Methods

### Method 1: Microsoft Store
```
1. Partner Center > Apps > Create app
2. Complete store listing
3. Upload package
4. Submit for certification
5. Publish after approval
```

### Method 2: Sideload (Direct)
```
1. Create signed MSIX
2. Host on website/downloads
3. User enables sideloading (or installs cert)
4. User double-clicks MSIX
5. Installs via App Installer
```

### Method 3: Intune/SCCM
```
1. Upload MSIX to Intune
2. Assign to user/device groups
3. Deploy via company portal
```

## Configuration

### Package.appxmanifest Settings
```xml
<Identity
  Name="YogeshwarKumar.FluentScan"
  Publisher="CN=YogeshwarKumar"
  Version="1.0.0.0" />

<Dependencies>
  <TargetDeviceFamily
    Name="Windows.Desktop"
    MinVersion="10.0.14393.0"
    MaxVersionTested="10.0.22621.0" />
</Dependencies>

<Capabilities>
  <rescap:Capability Name="runFullTrust" />
</Capabilities>
```

## Post-Deployment

### Update MSIX
```
1. Increment version in manifest
2. Rebuild package
3. Submit to Store or re-deploy
4. Users receive update via Store
```

### Uninstall
```powershell
Get-AppxPackage *FluentScan* | Remove-AppxPackage
```

---

*For distribution, use Store for broadest reach*