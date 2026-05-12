# FluentScan Asset Inventory

**Generated:** 2026-05-13  
**Total Assets:** 44

---

## 1. App Identity Assets

### Root Logo Files (Used by Package.appxmanifest)

| Filename | Dimensions | Format | Used By | Required | Notes |
|----------|------------|--------|---------|----------|-------|
| StoreLogo.png | 50x50 | PNG | Package.appxmanifest | Yes | Store listing icon |
| Square44x44Logo.png | 44x44 | PNG | Package.appxmanifest | Yes | Taskbar icon |
| Square150x150Logo.png | 150x150 | PNG | Package.appxmanifest | Yes | Start tile |
| SmallTile.png | 71x71 | PNG | Package.appxmanifest | Yes | Small start tile |
| LargeTile.png | 310x310 | PNG | Package.appxmanifest | Yes | Large start tile |
| Wide310x150Logo.png | 310x150 | PNG | Package.appxmanifest | Yes | Wide start tile |
| SplashScreen.png | 620x300 | PNG | Package.appxmanifest | Yes | Launch screen |

**Status:** ✓ All present and correctly sized

---

## 2. Theme Logo Assets (SVG - 4 variants)

### contrast-standard
| Filename | Dimensions | Format | Required | Branding | Priority |
|----------|------------|--------|----------|----------|----------|
| Logo.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |
| Logo small.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |

### contrast-black (Dark theme)
| Filename | Dimensions | Format | Required | Branding | Priority |
|----------|------------|--------|----------|----------|----------|
| Logo.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |
| Logo small.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |

### contrast-white (Light theme)
| Filename | Dimensions | Format | Required | Branding | Priority |
|----------|------------|--------|----------|----------|----------|
| Logo.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |
| Logo small.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |

### contrast-high (High contrast)
| Filename | Dimensions | Format | Required | Branding | Priority |
|----------|------------|--------|----------|----------|----------|
| Logo.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |
| Logo small.svg | Scalable | SVG | Yes | **YES - Scanner icon** | HIGH |

---

## 3. Splash Screen Assets (PNG - 4 variants, 5 scales each)

### contrast-standard (20 files)
| Scale | Dimensions | Status |
|-------|------------|--------|
| scale-100 | 620x300 | ✓ Present |
| scale-125 | 775x375 | ✓ Present |
| scale-150 | 930x450 | ✓ Present |
| scale-200 | 1240x600 | ✓ Present |
| scale-400 | 2480x1200 | ✓ Present |

### contrast-black (20 files)
| Scale | Dimensions | Status |
|-------|------------|--------|
| scale-100 | 620x300 | ✓ Present |
| scale-125 | 775x375 | ✓ Present |
| scale-150 | 930x450 | ✓ Present |
| scale-200 | 1240x600 | ✓ Present |
| scale-400 | 2480x1200 | ✓ Present |

### contrast-white (20 files)
| Scale | Dimensions | Status |
|-------|------------|--------|
| scale-100 | 620x300 | ✓ Present |
| scale-125 | 775x375 | ✓ Present |
| scale-150 | 930x450 | ✓ Present |
| scale-200 | 1240x600 | ✓ Present |
| scale-400 | 2480x1200 | ✓ Present |

### contrast-high (20 files)
| Scale | Dimensions | Status |
|-------|------------|--------|
| scale-100 | 620x300 | ✓ Present |
| scale-125 | 775x375 | ✓ Present |
| scale-150 | 930x450 | ✓ Present |
| scale-200 | 1240x600 | ✓ Present |
| scale-400 | 2480x1200 | ✓ Present |

**Status:** ✓ All 80 splash screen assets present

---

## 4. Animation Assets

| Filename | Format | Used By | Required | Notes |
|----------|--------|---------|----------|-------|
| 92923-loading-squares.json | Lottie/JSON | TutorialView.xaml | Yes | Generic loading animation - no branding |

---

## 5. ClipShelf Assets (Other Apps Dialog)

| Filename | Dimensions | Format | Used By | Required | Notes |
|----------|------------|--------|---------|----------|-------|
| Logo.svg | Scalable | SVG | OtherAppsDialogView.xaml | Yes | ClipShelf branding - 3rd party |
| Hero Image Alt Close-Up.jpg | - | JPEG | OtherAppsDialogView.xaml | Yes | ClipShelf promotional image |

---

## Summary Table

| Category | Count | Required | Needs Replacement |
|---------|-------|----------|-------------------|
| Root PNG Logos | 7 | 7 | No |
| Theme Logos (SVG) | 8 | 8 | **YES (8)** |
| Splash Screens | 80 | 80 | No (generic) |
| Lottie Animation | 1 | 1 | No |
| ClipShelf Assets | 2 | 2 | No (3rd party) |
| **TOTAL** | **98** | **98** | **8** |

---

## XAML References

### Logo.svg References
```xml
<!-- SettingsView.xaml:610 -->
<Image Source="/Assets/Logo.svg" />

<!-- OtherAppsDialogView.xaml:76 -->
<Image Source="/Assets/ClipShelf/Logo.svg" />
```

### Splash Screen References
```xml
<!-- Package.appxmanifest:49 -->
<uap:SplashScreen Image="Assets\SplashScreen.png" />
```

### Animation References
```xml
<!-- Views/TutorialView.xaml -->
<LottieAnimationSource Uri="ms-appx:///Assets/AnimatedVisuals/92923-loading-squares.json" />
```

---

## Asset Locations

```
FluentScan/Assets/
├── StoreLogo.png                    (50x50)
├── Square44x44Logo.png              (44x44)
├── Square150x150Logo.png            (150x150)
├── SmallTile.png                    (71x71)
├── LargeTile.png                    (310x310)
├── Wide310x150Logo.png              (310x150)
├── SplashScreen.png                 (620x300)
│
├── contrast-standard/
│   ├── Logo.svg                     [NEEDS REPLACEMENT]
│   ├── Logo small.svg               [NEEDS REPLACEMENT]
│   └── SplashScreen.scale-*.png    (5 scales)
│
├── contrast-black/
│   ├── Logo.svg                     [NEEDS REPLACEMENT]
│   ├── Logo small.svg               [NEEDS REPLACEMENT]
│   └── SplashScreen.scale-*.png    (5 scales)
│
├── contrast-white/
│   ├── Logo.svg                     [NEEDS REPLACEMENT]
│   ├── Logo small.svg               [NEEDS REPLACEMENT]
│   └── SplashScreen.scale-*.png    (5 scales)
│
├── contrast-high/
│   ├── Logo.svg                     [NEEDS REPLACEMENT]
│   ├── Logo small.svg               [NEEDS REPLACEMENT]
│   └── SplashScreen.scale-*.png    (5 scales)
│
├── ClipShelf/
│   ├── Logo.svg                     (3rd party - keep)
│   └── Hero Image Alt Close-Up.jpg (3rd party - keep)
│
└── AnimatedVisuals/
    └── 92923-loading-squares.json  (generic - keep)
```

---

## Inherited from Scanner Project

The following assets contain Scanner branding (scanner icon graphics):
- All 8 Logo.svg files (4 themes × 2 sizes)
- All Logo small.svg files (same as above)

These MUST be redesigned for FluentScan public release.

---

*See BRANDING_REPLACEMENT_PLAN.md for replacement strategy*