# Subscription Module

## Overview
The `Subscription` module is part of the **Features** group in the SBuddy App. It contains the primary view for managing and displaying subscription-related UI elements. This module is designed to be self-contained and independently testable.

---

## Key Components

### `SubscribeView`
- The main SwiftUI view responsible for rendering the subscription page.
- Displays subscription details, an animated bar chart, and interactive subscription buttons.
- Utilizes `BarChartView` from the `BarView` module.

---

## Features
1. Displays animated bar charts to visualize subscription data.
2. Handles subscription logic, including button interactions. (This is just an example)
3. Completely isolated from other features and modules.

---

## Independent Testing
This module has its own scheme (`Subscription-Demo`) and (`Subscription`), allowing developers to:
- Build and run the module independently.
- Test and debug without loading the entire app.

---

## Documentation
```swift
struct SBuddyApp: App {
    var body: some Scene {
        WindowGroup {
            AnyView(
                SubscriptionModule.subscribeView()
            )
        }
    }
}
```

---

## Requirements
- iOS 16.0+
- Swift 5.5+
- Xcode 16+

---

## How to Run
1. Select the `Subscription-Demo` in Xcode.
2. Build and run the scheme to test `SubscribeView` independently.

---

For more details, refer to the main [SBuddy App README](https://github.com/RioRizkyRainey/SBuddy/README.md).

