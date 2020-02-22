//
// Copyright © 2019 John Lewis PLC. All rights reserved.
//

import SwiftUI

struct SecondaryButtonStyle: ButtonStyle {
    
    private struct Content: View {
        let configuration: Configuration
    
        var label: some View {
            configuration.label
                .frame(maxWidth: .infinity)
                .padding()
        }
        
        @Environment(\.isEnabled) var isEnabled
        var body: some View {
            
            return Group {
                if configuration.isPressed {
                    label
                        .foregroundColor(Color.black)
                        .background(Color.gray)
                } else if isEnabled {
                    label
                        .foregroundColor(Color.white)
                        .background(Color.black)
                } else {
                    label
                        .foregroundColor(Color.white)
                        .background(Color.green)
                }
            }
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Content(configuration: configuration)
    }
}
