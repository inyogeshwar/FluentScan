# FluentScan Branding Replacement Plan

**Generated:** 2026-05-13  
**Priority:** HIGH - Required before public release

---

## Overview

FluentScan inherited 8 logo SVG files from the original Scanner project. These contain scanner device icon graphics that must be replaced with FluentScan branding before public release.

---

## Assets That MUST Be Redesigned

### Primary: Logo SVG Files (8 files)

| Asset | Path | Current | Replacement Needed |
|-------|------|---------|-------------------|
| Logo.svg | contrast-standard/ | Scanner device icon | **FluentScan logo** |
| Logo small.svg | contrast-standard/ | Scanner device icon | **FluentScan icon** |
| Logo.svg | contrast-black/ | Scanner device icon | **FluentScan logo** |
| Logo small.svg | contrast-black/ | Scanner device icon | **FluentScan icon** |
| Logo.svg | contrast-white/ | Scanner device icon | **FluentScan logo** |
| Logo small.svg | contrast-white/ | Scanner device icon | **FluentScan icon** |
| Logo.svg | contrast-high/ | Scanner device icon | **FluentScan logo** |
| Logo small.svg | contrast-high/ | Scanner device icon | **FluentScan icon** |

---

## Design Recommendations

### Logo Concept Options

**Option A: "F" Monogram**
- Simple, scalable letter "F" design
- Works at all sizes (16px to 512px)
- Fluent Design language
- Colors: Use Windows accent color or dark/light variants

**Option B: Document + Scan**
- Document icon with scan line
- Represents document scanning
- Clean, modern look

**Option C: Simplified Scanner**
- Abstract scanner shape (not the detailed icon)
- Modern, minimal design

### Requirements

1. **Scalable** - SVG format at any resolution
2. **Theme-aware** - Dark, light, high contrast variants
3. **Size variants** - Full logo and small icon versions
4. **Color palette** - Neutral grays + accent color

### Logo Sizes Needed

| Variant | Size | Usage |
|---------|------|-------|
| Full | ~450x450 | About dialog, documentation |
| Small | ~44x44 | Navigation, toolbar |

---

## Implementation Steps

### Phase 1: Design (Priority: HIGH)
1. Create new logo concepts
2. Design 4 theme variants (standard, black, white, high)
3. Create both full and small sizes
4. Export as SVG

### Phase 2: Replacement (Priority: HIGH)
1. Replace contrast-standard/Logo.svg
2. Replace contrast-standard/Logo small.svg
3. Replace contrast-black/Logo.svg
4. Replace contrast-black/Logo small.svg
5. Replace contrast-white/Logo.svg
6. Replace contrast-white/Logo small.svg
7. Replace contrast-high/Logo.svg
8. Replace contrast-high/Logo small.svg

### Phase 3: Verification (Priority: HIGH)
1. Build and test all themes
2. Verify logo displays in Settings > About
3. Verify logo displays in Other Apps dialog
4. Verify splash screens work correctly
5. Test on Windows 10 and Windows 11

---

## Assets That Do NOT Need Replacement

| Category | Count | Reason |
|----------|-------|--------|
| App Icons (PNG) | 7 | No scanner branding - generic shapes |
| Splash Screens | 80 | Generic graphics - no branding |
| Lottie Animation | 1 | Generic loading animation |
| ClipShelf Assets | 2 | 3rd party - for "Other Apps" dialog |

---

## Current Logo Analysis

### What They Show (Scanner Branding)
- Document scanner device illustration
- Light/button indicators
- Document feed tray
- Scan beam visualization

### Why They Need Replacement
1. **Trademark** - These are Scanner app graphics
2. **Branding** - FluentScan needs its own identity
3. **Professional** - Inherited branding looks unfinished

---

## Design Brief

### Logo Should Represent
- Document scanning functionality
- Modern Windows app
- Simplicity and ease of use

### Technical Requirements
- SVG format (vector)
- ViewBox: 450x450 for full, maintain aspect for small
- Transparent background
- No text (purely graphical for i18n)

### Color Guidelines
- Use grayscale (#383f45 to #899097) as base
- Accent color: System accent or brand blue
- Must work on dark and light backgrounds

---

## Timeline Recommendation

| Task | Estimated Time |
|------|----------------|
| Design concepts | 1-2 days |
| Create 4 theme variants | 1 day |
| Create size variants | 0.5 day |
| Replace in project | 0.5 day |
| Testing/verification | 1 day |
| **Total** | **4-5 days** |

---

## Post-Replacement Verification

After new logos are in place:

1. ✓ Build succeeds
2. ✓ Logo visible in Settings > About
3. ✓ Logo visible in Other Apps dialog
4. ✓ Splash screen shows logo
5. ✓ Dark theme shows correct variant
6. ✓ Light theme shows correct variant
7. ✓ High contrast mode works
8. ✓ Works on Windows 10
9. ✓ Works on Windows 11

---

## Alternative: Quick Fix (If No Design Resources)

If redesign not possible immediately:

1. **Use text-based logo** - "FS" monogram in system font
2. **Use Windows logo** - Generic Windows icon temporarily
3. **Use blank** - Hide logo, show only app name

*Not recommended for production - use proper design*

---

## Files to Modify

After new logos are ready:

1. Replace: `FluentScan/Assets/contrast-standard/Logo.svg`
2. Replace: `FluentScan/Assets/contrast-standard/Logo small.svg`
3. Replace: `FluentScan/Assets/contrast-black/Logo.svg`
4. Replace: `FluentScan/Assets/contrast-black/Logo small.svg`
5. Replace: `FluentScan/Assets/contrast-white/Logo.svg`
6. Replace: `FluentScan/Assets/contrast-white/Logo small.svg`
7. Replace: `FluentScan/Assets/contrast-high/Logo.svg`
8. Replace: `FluentScan/Assets/contrast-high/Logo small.svg`

---

*For complete asset list, see ASSET_INVENTORY.md*