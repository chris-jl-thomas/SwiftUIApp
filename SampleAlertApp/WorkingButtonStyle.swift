//
// Copyright © 2019 John Lewis PLC. All rights reserved.
//

import SwiftUI

struct WorkingButtonStyle: ButtonStyle {
    
    struct Content: View {
        
        let configuration: Configuration
        
        var label: some View {
            configuration.label
                .frame(maxWidth: .infinity)
                .padding()
        }
        
        var body: some View {
            if configuration.isPressed {
                return label
                    .foregroundColor(Color.black)
                    .background(Color.gray)
            } else {
                return label
                    .foregroundColor(Color.white)
                    .background(Color.green)
            }
            
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Content(configuration: configuration)
    }
}
