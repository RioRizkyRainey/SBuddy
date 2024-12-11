//
//  SubscriptionApp.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 09/12/24.
//

import SwiftUI
import Subscription

@main
struct SubscriptionApp: App {
    var body: some Scene {
        WindowGroup {
            AnyView(
                SubscriptionModule.subscribeView()
            )
        }
    }
}
