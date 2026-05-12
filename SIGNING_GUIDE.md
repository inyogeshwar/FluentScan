# Code Signing Guide

## Overview

Code signing ensures your app is trusted by Windows and users.

## Signing Options

### Option 1: Development (Testing)
- No certificate required
- Creates unsigned packages
- Limited installation (developer mode)

### Option 2: Self-Signed (Testing)
- Create self-signed certificate
- For internal testing only
- Not accepted by Store

### Option 3: Store Submission
- Certificate from Partner Center
- Required for Store submission
- Automatic signing on upload

## Creating Self-Signed Certificate

### PowerShell
```powershell
$cert = New-SelfSignedCertificate -Type Custom `
  -Subject "CN=YogeshwarKumar" `
  -KeyUsage DigitalSignature `
  -FriendlyName "FluentScan Test" `
  -CertStoreLocation "Cert:\CurrentUser\My" `
  -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.3", "2.5.29.19={text}")

Export-PfxCertificate -Cert $cert -FilePath "FluentScan.pfx" -Password (ConvertTo-SecureString -String "password" -Force -AsPlainText)
```

### Configure in csproj
```xml
<PropertyGroup>
  <AppxPackageSigningEnabled>true</AppxPackageSigningEnabled>
  <AppxPackageSigningTimestampDigestAlgorithm>SHA256</AppxPackageSigningTimestampDigestAlgorithm>
  <AppxAutoIncrementPackageRevision>False</AppxAutoIncrementPackageRevision>
  <PackageCertificateThumbprint>[thumbprint]</PackageCertificateThumbprint>
</PropertyGroup>
```

## Store Signing

1. Go to Microsoft Partner Center
2. Create app submission
3. Upload MSIX package
4. Certificate applied automatically
5. Download signed package

## Verify Signature

```powershell
Get-AuthenticodeSignature FluentScan.msix
```

## Troubleshooting

**Error: Certificate not trusted**
- Install certificate to Trusted Root store

**Error: Timestamp server unreachable**
- Check internet connection
- Try different timestamp server

---

*For production, use Partner Center certificates*