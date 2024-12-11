//
//  BarChartView.swift
//  BarView
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

public struct BarChartView: View {
    
    let config: BarChartConfig
    
    public init(config: BarChartConfig) {
        self.config = config
    }

    public var body: some View {
        HStack(alignment: .bottom, spacing: config.barSpacing) {
            ForEach(0..<config.labels.count, id: \.self) { index in
                VStack {
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: config.barColors,
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .frame(width: config.barWidth, height: config.heights[index])
                        .animation(.easeInOut(duration: 1), value: config.heights[index])
                    
                    Text(config.labels[index])
                        .font(.caption)
                        .foregroundColor(.black)
                }
            }
        }
    }
}
