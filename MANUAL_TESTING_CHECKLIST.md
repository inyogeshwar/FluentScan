# FluentScan Manual Testing Checklist

## Version: 1.0.0
## Date: 2026-05-13
## Build: Debug x86/x64

---

## 1. APPLICATION STARTUP

### 1.1 Initial Launch
- [ ] App launches without crash
- [ ] Splash screen displays correctly
- [ ] App icon appears in taskbar
- [ ] Title bar shows "FluentScan"
- [ ] No startup exceptions in logs

### 1.2 Service Initialization
- [ ] Log file created in `%APPDATA%\YogeshwarKumar.FluentScan\logs\`
- [ ] No service initialization errors in logs
- [ ] Settings loaded successfully

### 1.3 Navigation Shell
- [ ] NavigationView visible on left
- [ ] Three-panel layout displays correctly
- [ ] Scan Options panel visible
- [ ] Footer menu items visible

---

## 2. NAVIGATION TESTING

### 2.1 Main Navigation
- [ ] Click "Scan Options" - panel opens
- [ ] Click "Manage" - Page List opens
- [ ] Click "Editor" - Editor opens (when enabled)
- [ ] Click Settings (gear icon) - Settings opens

### 2.2 Window States
- [ ] Window resizes correctly
- [ ] Narrow state triggers at < 775px
- [ ] Wide state triggers at > 1750px
- [ ] Content adapts to window size

### 2.3 Dialogs
- [ ] Help dialog opens
- [ ] Donate dialog opens
- [ ] Changelog dialog opens
- [ ] Licenses dialog opens
- [ ] Other Apps dialog opens
- [ ] Settings dialog opens

---

## 3. SCANNER DETECTION

### 3.1 Discovery
- [ ] Scanner discovery starts automatically
- [ ] Loading indicator visible during scan
- [ ] Connected scanners appear in list
- [ ] Scanner names display correctly
- [ ] Multiple scanners detected (if applicable)

### 3.2 Scanner Selection
- [ ] Click scanner to select
- [ ] Scanner info panel updates
- [ ] Available formats listed
- [ ] Resolution options populated

### 3.3 Error Scenarios
- [ ] No scanner connected - appropriate message shown
- [ ] Scanner disconnected - notification appears
- [ ] Scanner reconnected - appears in list again

---

## 4. SCAN WORKFLOW

### 4.1 Scan Options
- [ ] Color mode selector works (Color/Grayscale/Monochrome)
- [ ] Source selector works (Flatbed/Feeder/Auto)
- [ ] Resolution dropdown populated
- [ ] Brightness slider functional
- [ ] Contrast slider functional
- [ ] Format selector works (PDF/JPEG/PNG/TIFF)

### 4.2 Single Page Scan
- [ ] Click "Scan" button
- [ ] Progress indicator appears
- [ ] Preview generated successfully
- [ ] Preview displays in main content area
- [ ] Page added to management list

### 4.3 Multi-Page Scan
- [ ] Enable "Scan multiple pages"
- [ ] Click "Scan"
- [ ] First page scanned and shown
- [ ] "Scan next page" prompt appears
- [ ] Continue scanning multiple pages
- [ ] Click "Done" to finish
- [ ] All pages appear in list

---

## 5. PAGE LIST (MANAGE)

### 5.1 Page Display
- [ ] Scanned pages appear as thumbnails
- [ ] Page count badge shows correct number
- [ ] Thumbnails load correctly
- [ ] File names display correctly

### 5.2 Page Actions
- [ ] Click page to select
- [ ] Double-click to open in Editor
- [ ] Right-click shows context menu
- [ ] Delete page works
- [ ] Reorder via drag-drop works

### 5.3 Multi-Select
- [ ] Ctrl+Click selects multiple
- [ ] Select all works
- [ ] Batch delete works
- [ ] Batch operations complete

---

## 6. EDITOR TOOLS

### 6.1 Basic Editing
- [ ] Open page in Editor
- [ ] Crop tool activates
- [ ] Crop handles visible and draggable
- [ ] Rotate 90° CW works
- [ ] Rotate 90° CCW works
- [ ] Rotate 180° works

### 6.2 Page Management
- [ ] Delete page works
- [ ] Undo works (Ctrl+Z)
- [ ] Redo works (Ctrl+Y)
- [ ] Save changes works

### 6.3 Advanced Tools
- [ ] Brightness adjustment works
- [ ] Contrast adjustment works
- [ ] Zoom in/out works
- [ ] Pan/scroll works
- [ ] Fit to window works

### 6.4 Annotation Tools (InkCanvas)
- [ ] Pen tool activates
- [ ] Highlighter tool activates
- [ ] Eraser works
- [ ] Color picker works
- [ ] Stroke width adjustable
- [ ] Annotations save correctly

---

## 7. EXPORT WORKFLOW

### 7.1 PDF Export
- [ ] Select pages to export
- [ ] Click "Export as PDF"
- [ ] Custom naming dialog opens
- [ ] File naming pattern works
- [ ] Save dialog opens
- [ ] PDF generated successfully
- [ ] PDF opens in default viewer

### 7.2 Image Export
- [ ] Select single page
- [ ] Click "Export as Image"
- [ ] Format selection works
- [ ] Quality settings work
- [ ] File saves correctly
- [ ] Image opens in viewer

### 7.3 Share Functionality
- [ ] Share button present
- [ ] Share flyout opens
- [ ] Available share targets listed
- [ ] Sharing works

---

## 8. SETTINGS

### 8.1 General Settings
- [ ] Language selector works
- [ ] Theme selector works (Light/Dark/System)
- [ ] Theme changes apply immediately

### 8.2 Scan Settings
- [ ] Default save location configurable
- [ ] Auto-rotate toggle works
- [ ] Default format configurable

### 8.3 About Section
- [ ] Version displayed correctly
- [ ] Links open in browser
- [ ] Changelog accessible
- [ ] Licenses listed

---

## 9. LOCALIZATION

### 9.1 English (Default)
- [ ] All text displays correctly
- [ ] No truncated text
- [ ] No overflow issues

### 9.2 Other Languages (Test a few)
- [ ] German (DE)
- [ ] French (FR)
- [ ] Spanish (ES)
- [ ] Chinese (ZH-HANS)
- [ ] Text fits in UI elements
- [ ] RTL languages (if applicable)

---

## 10. THEME TESTING

### 10.1 Light Theme
- [ ] Background is light
- [ ] Text is dark
- [ ] Icons visible
- [ ] Contrast adequate

### 10.2 Dark Theme
- [ ] Background is dark
- [ ] Text is light
- [ ] Icons visible
- [ ] Contrast adequate

### 10.3 System Theme
- [ ] Follows Windows setting
- [ ] Changes when Windows theme changes

---

## 11. PERFORMANCE

### 11.1 Startup Time
- [ ] Cold start < 3 seconds
- [ ] No freeze during init

### 11.2 Scanning
- [ ] Preview generates < 5 seconds
- [ ] Progress indicator smooth
- [ ] UI responsive during scan

### 11.3 Memory Usage
- [ ] < 300MB for 10 pages
- [ ] Memory released when closing
- [ ] No memory leaks visible

---

## 12. ERROR HANDLING

### 12.1 File Access
- [ ] No scanner - appropriate error
- [ ] Disk full - appropriate error
- [ ] Read-only folder - appropriate error
- [ ] Network path unavailable - appropriate error

### 12.2 Scanner Errors
- [ ] Scanner busy - retry prompt
- [ ] Scan failed - error message
- [ ] Paper jam - notification
- [ ] Cover open - notification

### 12.3 Crash Recovery
- [ ] Suspend/resume works
- [ ] State restored after terminate
- [ ] Logs contain crash info

---

## 13. ACCESSIBILITY

### 13.1 Keyboard Navigation
- [ ] Tab navigation works
- [ ] Enter activates buttons
- [ ] Arrow keys navigate lists
- [ ] Escape closes dialogs

### 13.2 Screen Reader
- [ ] Narrator can read main elements
- [ ] Automation IDs present
- [ ] Live regions announce changes

### 13.3 High Contrast
- [ ] Elements visible in high contrast
- [ ] Icons distinguishable
- [ ] Text readable

---

## 14. PACKAGE VALIDATION

### 14.1 Installation
- [ ] MSIX installs without error
- [ ] App appears in Start menu
- [ ] App icon correct
- [ ] Uninstall works cleanly

### 14.2 Data Persistence
- [ ] Settings persist after update
- [ ] Logs persist after update
- [ ] User data preserved

---

## Test Results Summary

| Category | Passed | Failed | Blocked |
|----------|--------|--------|---------|
| Startup | | | |
| Navigation | | | |
| Scanner | | | |
| Scan Workflow | | | |
| Page List | | | |
| Editor | | | |
| Export | | | |
| Settings | | | |
| Localization | | | |
| Theme | | | |
| Performance | | | |
| Error Handling | | | |
| Accessibility | | | |
| Package | | | |

**Total: 0/0 tests passed**

---

## Bugs Found

| # | Severity | Description | Steps to Reproduce | Expected | Actual |
|---|----------|-------------|-------------------|----------|--------|
| 1 | | | | | |
| 2 | | | | | |
| 3 | | | | | |

---

## Notes

_Use this section for additional observations and recommendations._
