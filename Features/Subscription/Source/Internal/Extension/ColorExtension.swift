//
//  ColorExtension.swift
//  Subscription
//
//  Created by Rio Rizky Rainey Ferbiansyah on 11/12/24.
//

import SwiftUI

// We use this extension to help developer calling the color easily.
extension Color {
    static var topBarColor: Color {
        return Color("top_bar", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
    
    static var bottomBarColor: Color {
        return Color("bottom_bar", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
    
    static var bottomTextColor: Color {
        return Color("bottom_text", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
    
    static var topTextColor: Color {
        return Color("top_text", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
    
    static var buttonColor: Color {
        return Color("button", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
    
    static var backgroundColor: Color {
        return Color("background_color", bundle: Bundle(identifier: "com.speakbuddy.features.Subscription"))
    }
}
