//
//  SubscriptionModule.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

public struct SubscriptionModule {
    
    // TODO: Documentation
    public static func subscribeView() -> any View {
        return SubscribeRouter.make()
    }
    
}
