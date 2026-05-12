# FluentScan

> [!NOTE]
> The project is being rewritten from the ground up with lots of changes happening in quick succession. As a result, the current app is in maintenance mode and contributions will probably not reach the release channel. Stay tuned for the full release of v4!

<div align="center">
  <img src="https://user-images.githubusercontent.com/50021001/143053339-ad627dd6-ee56-4329-9985-513dadf23935.jpg"/>
</div>

<div align="center">

[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-blue.svg)](https://opensource.org/licenses/MPL-2.0)
[![Platform](https://img.shields.io/badge/Platform-Windows%2011-blue)](https://www.microsoft.com/windows/windows-11)
[![.NET](https://img.shields.io/badge/.NET-8.0-purple)](https://dotnet.microsoft.com/)

*A modern Windows 11 scanner application with Fluent Design*

**Developer:** Yogeshwar Kumar

</div>

## Features

- Support for all WIA-compatible scanners (that's probably almost every regular consumer scanner in use today)
- Save multiple pages in a single PDF file or as separate images
- Immediately see the result after scanning
- Scanned pages are automatically rotated
- Built-in editor
  - Crop and rotate, even multiple pages at once
  - Draw and highlight with Windows Ink
  - Rename files and delete pages
  - Seamless editing of both PDFs and image files
  - Reorder PDF pages
- Share and copy your scans or continue editing in another app
- A beautiful interface crafted for Windows 11

## Screenshots

| | |
|---|---|
| ![Screenshot 1](https://user-images.githubusercontent.com/50021001/143053709-1b46c8ee-ccd6-4495-9abc-c4869e7640b0.png) | ![Screenshot 2](https://user-images.githubusercontent.com/50021001/143053825-4018b89f-0144-414e-9528-67397b7b5280.png) |
| ![Screenshot 3](https://user-images.githubusercontent.com/50021001/143053874-84d84d70-8099-4e6c-ac41-7c05e6d516c7.png) | |

## Tech Stack

- **Framework:** .NET 8 / UWP / WinUI 3
- **Architecture:** MVVM with CommunityToolkit.Mvvm
- **UI:** Windows Fluent Design with Mica/Acrylic
- **Scanner:** Windows.Devices.Scanners (WIA)
- **Logging:** Serilog
- **Storage:** SQLite

## Getting Started

### Prerequisites

- Windows 10 version 1809 or later (Windows 11 recommended)
- .NET 8 SDK
- Visual Studio 2022 with UWP workload

### Build

```powershell
# Clone the repository
git clone https://github.com/inyogeshwar/FluentScan.git

# Navigate to project
cd FluentScan

# Restore packages
dotnet restore

# Build solution
dotnet build FluentScan.sln -c Debug

# Or build for release
dotnet build FluentScan.sln -c Release
```

### Running Tests

```powershell
dotnet test FluentScan.Tests\FluentScan.Tests.csproj
```

## Development

### Project Structure

```
FluentScan/
├── FluentScan/           # Main application
│   ├── Views/            # XAML pages and dialogs
│   ├── ViewModels/       # MVVM view models
│   ├── Services/         # Business logic & services
│   ├── Models/           # Data models
│   ├── Controls/         # Custom XAML controls
│   └── Resources/        # Localization files
├── FluentScan.Package/    # MSIX packaging project
├── FluentScan.Tests/     # Unit tests
└── ImageToPDF/           # PDF conversion utility
```

### Architecture

- **MVVM Pattern:** ViewModels use CommunityToolkit.Mvvm
- **Dependency Injection:** Microsoft.Extensions.DependencyInjection
- **Messaging:** WeakReferenceMessenger for inter-component communication
- **All namespaces under FluentScan.***

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the **Mozilla Public License 2.0 (MPL-2.0)** - see the [LICENSE](LICENSE) file for details.

## Translations

The currently supported languages are:
- Tunisian Arabic (AR-TN)
- Catalan (CA)
- Chinese Simplified (ZH-HANS)
- Czech (CS)
- Dutch (NL)
- English (EN)
- English (EN-GB)
- French (FR)
- German (DE)
- Hebrew (HE)
- Hindi (HI)
- Hungarian (HU)
- Indonesian (ID)
- Italian (IT)
- Norwegian (NB)
- Polish (PL)
- Portuguese (PT)
- Portuguese (PT-BR)
- Romanian (RO)
- Russian (RU)
- Slovak (SK)
- Spanish (ES)
- Ukrainian (UK)

## Credits

- **Developer:** Yogeshwar Kumar
- Banner: [Microsoft Edge on Unsplash](https://unsplash.com/@microsoftedge)