//
//  SubscribeRouter.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 12/12/24.
//

import SwiftUI

final class SubscribeRouter {
    
    // This is just simple example.
    // If to create the view needing some parameters or variables, you can adding in this function.
    static func make() -> any View {
        let view = SubscribeView(
            viewModel: SubscribeViewModel()
        )
        return view
    }
    
}
