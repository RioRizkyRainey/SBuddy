//
//  SubscriptionModule.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

public struct SubscriptionModule {
    
    // Keep the module loose coupling, not dependant.
    // Other module that want to access subscription view, no need to know how the inside.
    public static func subscribeView() -> any View {
        return SubscribeRouter.make()
    }
    
}
