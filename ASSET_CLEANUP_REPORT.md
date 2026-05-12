# FluentScan Asset Cleanup Report

**Generated:** 2026-05-13

---

## Summary

| Category | Count | Status |
|----------|-------|--------|
| Required assets | ~70 | OK |
| Inherited branding | 8 | **NEEDS REPLACEMENT** |
| Unused/can remove | 2 | Pending review |

---

## Safe to Remove

### 1. ClipShelf Assets (2 files)
- `FluentScan/Assets/ClipShelf/Hero Image Alt Close-Up.jpg`
- `FluentScan/Assets/ClipShelf/Logo.svg`

**Status:** Currently referenced in OtherAppsDialogView.xaml but dialog not accessible (navigation removed)
**Recommendation:** Remove if OtherApps dialog is fully deprecated

### 2. Simon.jpg (already removed)
- Was at `FluentScan/Assets/Simon.jpg`
**Status:** Already removed from project

---

## Inherited Branding (8 files - REPLACE BEFORE RELEASE)

### Logo SVG Files (8 files)
All contain Scanner app branding - old scanner device icon:

| File | Theme |
|------|-------|
| `contrast-standard/Logo.svg` | Standard |
| `contrast-standard/Logo small.svg` | Standard |
| `contrast-black/Logo.svg` | Dark |
| `contrast-black/Logo small.svg` | Dark |
| `contrast-white/Logo.svg` | Light |
| `contrast-white/Logo small.svg` | Light |
| `contrast-high/Logo.svg` | High contrast |
| `contrast-high/Logo small.svg` | High contrast |

**Priority:** HIGH
**Action:** Replace with FluentScan branding

---

## Required Assets (Do NOT Remove)

### App Icons (7 PNG)
| Asset | Purpose |
|-------|---------|
| StoreLogo.png | Store listing |
| Square44x44Logo.png | Taskbar |
| Square150x150Logo.png | Start tile |
| SmallTile.png | Small tile |
| LargeTile.png | Large tile |
| Wide310x150Logo.png | Wide tile |
| SplashScreen.png | Launch screen |

### Splash Screens (80 PNG)
- 4 themes × 5 scales each
- All required for proper display across DPI

### Lottie Animation (1 JSON)
- `AnimatedVisuals/92923-loading-squares.json`
- Generic loading animation - no branding

### License Texts (21 files)
- Required for legal compliance

---

## Build Artifacts (Cleanable)

### Can Clean
- `FluentScan/bin/` - Debug builds
- `FluentScan/obj/` - Intermediate files
- `FluentScan.Package/bin/` - Package outputs
- `FluentScan.Package/obj/` - Package intermediates
- `ImageToPDF/bin/`, `ImageToPDF/obj/`
- `FluentScan.Tests/bin/`, `FluentScan.Tests/obj/`

**Note:** Already in .gitignore

---

## Recommendation

1. **Immediate:** Replace 8 Logo SVG files with FluentScan branding
2. **Optional:** Remove ClipShelf assets if OtherApps dialog fully deprecated
3. **No action needed:** All other assets are required

---

*See LOGO_DESIGN_PROMPTS.md for replacement design prompts*