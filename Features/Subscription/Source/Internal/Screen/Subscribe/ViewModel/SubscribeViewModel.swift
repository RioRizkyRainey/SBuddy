//
//  SubscriptionViewModel.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

final class SubscribeViewModel:  SubscribeViewModelSpecs {
    
    @Published var barHeights: [CGFloat] = [0.0, 0.0, 0.0, 0.0]
    
    private(set) var barLabels: [String] = ["現在", "3ヶ月", "1年", "2年"]
    
    var numberOfBar: Int {
        barHeights.count
    }
    
    // Example if we loading an api or data from local storage
    func load() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.barHeights = [0.2, 0.3, 0.6, 0.8]
        }
        
    }
}
