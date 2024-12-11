//
//  SubscribeRouter.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

final class SubscribeRouter {
    
    static func make() -> any View {
        let view = SubscribeView(
            viewModel: SubscribeViewModel()
        )
        return view
    }
    
}
