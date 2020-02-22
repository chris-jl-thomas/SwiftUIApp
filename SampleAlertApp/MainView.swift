//
//  ContentView.swift
//  SampleAlertApp
//
//  Created by Chris Thomas on 10/02/2020.
//  Copyright © 2020 Chris Thomas. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    // Adding in this, and
    @State var isEnabled = false
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("This is a Primary Button")
            }
            .buttonStyle(SecondaryButtonStyle())
            // this caused the weird bug if...
            .disabled(isEnabled)
            
            Button(action: { self.isEnabled.toggle() }) {
                Text("This is a Primary Button")
            }
            .buttonStyle(SecondaryButtonStyle())
        }
    }
}
