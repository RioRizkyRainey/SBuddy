//
//  SubscriptionViewModelSpecs.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

protocol SubscribeViewModelSpecs: ObservableObject {
    
    var barLabels: [String] { get }
    
    var barHeights: [CGFloat] { get }
    
    var numberOfBar: Int { get }
    
    func load()
    
}
