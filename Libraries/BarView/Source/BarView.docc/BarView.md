# BarView Module

## Overview
The `BarView` module is part of the **Libraries** group in the SBuddy App. It provides reusable components for rendering customizable and animated bar charts.

---

## Key Components

### `BarChartView`
- A SwiftUI view for displaying animated bar charts.
- Fully customizable with properties defined in the `BarChartConfig` struct.

### `BarChartConfig`
- A configuration struct used to define bar chart properties, including:
  - Bar colors (top and bottom gradients).
  - Bar spacing and width.
  - Label and axis configurations.

---

## Features
1. Reusable across multiple modules and projects.
2. Supports animation for bar height changes.
3. Customizable via the `BarChartConfig` struct.

---

## Independent Testing
This module has its own scheme (`BarView`), allowing developers to:
- Build the module independently.
- Test bar chart configurations and animations in isolation.

---

## How to Use
```swift
BarChartView(
    config: BarChartConfig(
        barWidth: 62,
        barSpacing: 16,
        barColors: Gradient(colors: [.black, .white]),
        labels: ["A", "B"],
        heights: ["0.3", "0.3"]
    )
)
```

---

## Requirements
- iOS 16.0+
- Swift 5.5+
- Xcode 16+

---

## How to Build
1. Select the `BarView` in Xcode Scheme.
2. And build framework independently without effecting aother module.

---

For more details, refer to the main [Subscription App README](https://github.com/RioRizkyRainey/SBuddy/README.md).

