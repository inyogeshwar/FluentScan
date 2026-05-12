# Versioning Guide

## Version Format

`MAJOR.MINOR.PATCH.BUILD`

| Component | Change Type | Example |
|-----------|-------------|---------|
| MAJOR | Breaking changes | 1.0.0.0 → 2.0.0.0 |
| MINOR | New features | 1.0.0.0 → 1.1.0.0 |
| PATCH | Bug fixes | 1.0.0.0 → 1.0.1.0 |
| BUILD | Internal iteration | 1.0.0.0 → 1.0.0.1 |

## Current Version

**1.0.0.0** - Initial Release

## Version Locations

### Package.appxmanifest
```xml
<Identity Version="1.0.0.0" />
```

### AssemblyInfo.cs
```csharp
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]
```

### AppConstants.cs
```csharp
public const string CurrentVersion = "1.0.0.0";
```

## Release Schedule

### Patch Releases (1.0.x)
- Monthly if needed
- Bug fixes only
- Security updates: immediate

### Minor Releases (1.x.0)
- Quarterly
- New features (backward compatible)
- Performance improvements

### Major Releases (x.0.0)
- As needed
- Breaking changes
- Significant architectural changes

## Git Tagging

```bash
git tag -a v1.0.0.0 -m "FluentScan 1.0.0.0 Release"
git push origin v1.0.0.0
```

---

*See CHANGELOG.md for version history*