//
//  SBuddyApp.swift
//  SBuddy
//
//  Created by Rio Rizky Rainey Ferbiansyah on 06/12/24.
//

import SwiftUI
import Subscription

@main
struct SBuddyApp: App {
    var body: some Scene {
        WindowGroup {
            AnyView(
                SubscriptionModule.subscribeView()
            )
        }
    }
}
