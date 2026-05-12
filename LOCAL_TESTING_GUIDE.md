# Local Testing Guide

## Quick Test

### Run from Visual Studio
1. Set FluentScan.Package as startup project
2. Press F5
3. App launches on local machine

### Run MSIX Directly
```powershell
Add-AppxPackage -Path "FluentScan.msix" -AllowUnsigned
Start-Process fluent-scan:
```

## Test Scenarios

### Functional Tests
- [ ] Scanner discovery works
- [ ] Scanner selection works
- [ ] Scan completes successfully
- [ ] Preview displays correctly
- [ ] Save dialog works
- [ ] PDF generation works
- [ ] Page merge works

### UI Tests
- [ ] Navigation works
- [ ] Theme toggle works
- [ ] Settings persist
- [ ] All dialogs open/close

### Platform Tests
- [ ] Works on Windows 10
- [ ] Works on Windows 11
- [ ] Dark mode displays correctly
- [ ] Light mode displays correctly

## Debug Mode Testing

### Enable Logging
1. Open Settings in app
2. Navigate to about section
3. Check log file location

### View Logs
```powershell
Get-Content "$env:LOCALAPPDATA\YogeshwarKumar.FluentScan\logs\*.json"
```

### Common Issues

| Issue | Solution |
|-------|----------|
| Scanner not found | Check Windows scanner settings |
| App won't start | Check Event Viewer |
| PDF won't save | Check folder permissions |

## Test Checklist

Before release, verify:
- [ ] Fresh install works
- [ ] Update install works
- [ ] Uninstall works
- [ ] Settings persist
- [ ] No crashes during normal use

---

*For automated testing, set up test project*