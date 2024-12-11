//
//  BarChartConfigs.swift
//  BarView
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

public struct BarChartConfig {
    let barWidth: CGFloat
    let barSpacing: CGFloat
    let barColors: Gradient
    let labels: [String]
    let heights: [CGFloat]
    
    public init(barWidth: CGFloat, barSpacing: CGFloat, barColors: Gradient, labels: [String], heights: [CGFloat]) {
        self.barWidth = barWidth
        self.barSpacing = barSpacing
        self.barColors = barColors
        self.labels = labels
        self.heights = heights
    }
}
