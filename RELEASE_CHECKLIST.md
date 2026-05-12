# FluentScan Release Checklist

## Pre-Release Validation

### Build Verification
- [ ] Solution builds successfully in Release|x86
- [ ] Solution builds successfully in Release|x64
- [ ] Solution builds successfully in Release|ARM64
- [ ] MSIX package generates without errors
- [ ] Package passes Windows App Certification Kit

### Metadata Validation
- [ ] Product name: FluentScan (verified in executable)
- [ ] Publisher: Yogeshwar Kumar (verified)
- [ ] Version: 1.0.0.0
- [ ] Copyright: Copyright © 2026 Yogeshwar Kumar
- [ ] Package identity: YogeshwarKumar.FluentScan
- [ ] Description updated for release

### Asset Validation
- [ ] All store logos present and correct size
- [ ] Splash screens for all contrast modes
- [ ] Icons for all form factors (mobile, desktop)
- [ ] Screenshots captured (at least 5)
- [ ] Privacy policy URL configured
- [ ] Support URL configured

### Localization
- [ ] All 25 languages have valid resource files
- [ ] English (default) strings complete
- [ ] App name localized in all languages
- [ ] Description localized in all languages

### Legal & Compliance
- [ ] Privacy policy published and linked
- [ ] Third-party licenses included
- [ ] Code of conduct present
- [ ] License file (MPL-2.0) present

### Store Submission Readiness
- [ ] Store listing complete
- [ ] Keywords optimized (100 char limit)
- [ ] Category selected: Productivity > Scanning
- [ ] Age rating: Everyone
- [ ] Screenshot requirements met
- [ ] Feature graphic prepared

## Post-Build Actions

### Package Signing
- [ ] Code signing certificate obtained
- [ ] Certificate installed
- [ ] Package signed
- [ ] Signature verified

### Testing
- [ ] Fresh install tested
- [ ] Update from previous version tested
- [ ] Uninstall tested
- [ ] All features functional on Windows 10
- [ ] All features functional on Windows 11

### Submission
- [ ] Package uploaded to Partner Center
- [ ] Certification passed
- [ ] Store listing published
- [ ] Public URL verified

## Post-Release Monitoring
- [ ] Crash reports monitored
- [ ] Store reviews monitored
- [ ] Support channels monitored
- [ ] Updates scheduled as needed

---

## Version History
| Version | Date | Status | Notes |
|---------|------|--------|-------|
| 1.0.0.0 | 2026-05-13 | Ready | Initial release |