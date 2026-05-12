# Troubleshooting Guide

## Common Issues

### Scanner Not Found

**Symptoms:** "No scanner detected" message

**Solutions:**
1. Ensure scanner is powered on
2. Check USB/network connection
3. Open Windows Settings > Devices > Scanners
4. Verify scanner appears in Windows list
5. Try disconnecting and reconnecting
6. Update scanner drivers from manufacturer

### Scan Quality Issues

**Blurry or unclear scans:**
- Increase resolution (300+ DPI)
- Clean scanner glass
- Ensure document is flat
- Check for debris on glass

**Incorrect colors:**
- Adjust color mode in scan options
- Clean scanner sensors
- Verify document is properly placed

### PDF Won't Save

**Error: "Cannot save file"**
- Check available storage space
- Verify Documents folder exists
- Try different save location
- Run app as administrator

### App Crashes

**On startup:**
1. Check Windows Event Viewer for error details
2. Update Windows to latest version
3. Reinstall FluentScan
4. Check compatibility settings

**During scan:**
- Try different scan settings
- Reduce resolution
- Check scanner connection

## Windows Compatibility

### Supported Versions
- Windows 10 (1903+)
- Windows 11

### Not Supported
- Windows 10 version 1809 and earlier

## Performance Issues

**Slow to start:**
- Normal for first launch
- Check for pending Windows updates
- Disable optional analytics in settings

**Slow scanning:**
- Higher resolution = longer processing
- Check USB 2.0 vs 3.0 connection
- Close other apps during scan

## Error Codes

| Code | Meaning | Solution |
|------|---------|----------|
| 0x80070005 | Access denied | Run as administrator |
| 0x80070490 | Scanner not found | Check connection |
| 0x80070020 | File locked | Close file, retry |

## Reset App

To reset all settings:
1. Uninstall FluentScan
2. Delete folder: `%LOCALAPPDATA%\FluentScan`
3. Reinstall from Store or MSIX
4. Reconfigure settings

## Get Help

If issues persist:
- [GitHub Issues](https://github.com/inyogeshwar/FluentScan/issues)
- Email: yogeshwar853202@gmail.com

Include:
- Windows version
- Scanner model
- Error message (if any)
- Steps to reproduce