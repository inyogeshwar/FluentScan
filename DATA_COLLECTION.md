# Data Collection Disclosure

## Overview

This document details what data FluentScan collects and how it's used.

## Data Categories

### 1. Scanned Documents (User Data)
- **Stored locally only**
- User controls save location
- Not transmitted anywhere
- Deleted on uninstall

### 2. App Settings (User Data)
- Stored in: `%LOCALAPPDATA%\FluentScan\`
- Includes: preferences, recent files
- Not transmitted anywhere

### 3. Diagnostic Data (Anonymous)
- **Optional, can be disabled**
- Collected via Microsoft App Center
- No personally identifiable information
- Used for bug fixes and improvements

### 4. Crash Reports
- Generated when app crashes
- Includes: exception details, stack trace
- No document content
- Helps improve stability

## What We Don't Collect

- Scanned document content
- Images or photos
- Personal information
- Usage data that could identify you
- Network traffic content

## Disabling Data Collection

### App Center Analytics
1. Open FluentScan Settings
2. Navigate to Privacy section
3. Toggle "Send usage data" off

### Windows Telemetry
1. Open Windows Settings
2. Privacy > Diagnostics
3. Set to Basic or Off

## Data Retention

| Data Type | Retention |
|-----------|-----------|
| Scanned documents | Until deleted by user |
| App settings | Until uninstall |
| Crash reports | 90 days |
| Analytics | 30 days |

---

*For questions about data collection, contact: yogeshwar853202@gmail.com*