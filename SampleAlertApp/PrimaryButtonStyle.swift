//
//  PrimaryButtonStyle.swift
//  SampleAlertApp
//
//  Created by Chris Thomas on 17/02/2020.
//  Copyright © 2020 Chris Thomas. All rights reserved.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) var isEnabled
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Group {
            if configuration.isPressed {
            configuration.label
            .foregroundColor(.black)
        } else if isEnabled {
            configuration.label
                .foregroundColor(.blue)
        } else {
            configuration.label
            .foregroundColor(.red)
        }
        }
    }
}
