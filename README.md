# Subscription App

## Overview
This project demonstrates the use of SwiftUI to create a responsive and animated subscription view. The app is structured using a modular architecture to enhance scalability, maintainability, and reusability.

## Architecture
### Modular Architecture
![Modular Architecture Chart](https://github.com/RioRizkyRainey/SBuddy/blob/main/Modular.jpg)
The project is divided into two main groups:

1. **Features**: Contains app-specific modules that deliver functionality directly tied to the application.
2. **Libraries**: Contains reusable modules that can be shared across multiple features or even projects.

This separation allows for:

- **Ease of Maintenance:** Isolated modules make debugging and feature updates straightforward.
Reusability: Libraries can be reused across various projects, reducing redundant code.

- **Team Scalability:** Different teams can work on different modules without conflicts.

## Module Structure
1. ### Features

    - **Subscription**: Contains SubscribeView, the primary view responsible for rendering the subscription UI.
    [See Subscription Module Documentation Libraries](https://github.com/RioRizkyRainey/SBuddy/blob/main/Features/Subscription/Source/Subscription.docc/Subscription.md)

    - **BarView**: Contains BarChartView and its configuration, used to render animated bar charts in SubscribeView.
    [See BarView Module Documentation](https://github.com/RioRizkyRainey/SBuddy/blob/main/Libraries/BarView/Source/BarView.docc/BarView.md)

## Independent Module Testing
A significant benefit of the modular architecture is that each module has its own scheme.
This means:

- You can build and run individual modules without running the entire application.
- This approach is especially beneficial in large-scale applications where reading, understanding, or compiling the whole codebase becomes challenging.
- Independent module testing improves developer productivity and accelerates the debugging process.
Each module can also have its own dedicated documentation, making it easier for developers to understand and work with the codebase.

## Features
### Subscription
The SubscribeView resides in the Subscription module under the Features group. It is responsible for:

- Displaying subscription details such as headings, bar charts, and subscription buttons.
- Utilizing the BarChartView from the BarView module to show an animated bar graph.

## Libraries
### BarView
The BarView module under the Libraries group includes:

- BarChartView: A reusable SwiftUI view for rendering customizable and animated bar charts.
- BarChartConfig: A configuration struct to define bar chart properties, such as colors, spacing, and labels.
The BarView module is designed to be independent and reusable across other projects or features.

## Dependency Management
The project uses CocoaPods for dependency management. This ensures smooth integration of third-party libraries and version control.

## Design Patterns
The project employs the MVVM (Model-View-ViewModel) architecture with an additional Router layer for navigation.
The Router facilitates navigation and keeps the ViewModel focused on its primary responsibilities.

## Why Modular Architecture?
1. **Scalability**: Modular architecture allows the app to grow organically without creating dependencies or conflicts between components.
2. **Reusability**: Libraries like BarView can be used across multiple features or projects.
3. **Testing**: Modules can be tested independently, reducing the complexity of debugging and ensuring high reliability.
4. **Independent Scheme Execution**:
    - Each module can be developed, tested, and debugged independently by creating a scheme for it.
    - This is particularly advantageous for large applications, as it eliminates the need to load the entire codebase during development.
    - It reduces build times and ensures focused testing, which can improve developer efficiency.

## Getting Started
### Requirements
- iOS 16.0+
- Swift 5.5+
- Xcode 16+

### Installation
Clone the repository.
Navigate to the project directory and run:
```bash
pod install
```
Open the .xcworkspace file in Xcode.
