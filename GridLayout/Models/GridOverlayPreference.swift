//
//  SpanPreference.swift
//  GridLayout
//
//  Created by Denis Obukhov on 18.04.2020.
//  Copyright © 2020 Denis Obukhov. All rights reserved.
//

import SwiftUI

struct GridOverlayPreference {
    var content: (_ rect: CGRect?) -> AnyView
}

struct GridOverlayPreferenceKey: PreferenceKey {
    typealias Value = GridOverlayPreference
    
    static var defaultValue = GridOverlayPreference(content: { _ in AnyView(EmptyView())})

    static func reduce(value: inout GridOverlayPreference, nextValue: () -> GridOverlayPreference) {
        value = nextValue()
    }
}