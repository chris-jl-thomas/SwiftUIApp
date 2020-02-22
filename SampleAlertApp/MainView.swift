//
//  ContentView.swift
//  SampleAlertApp
//
//  Created by Chris Thomas on 10/02/2020.

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("This is a Primary Button")
            }
            .buttonStyle(BrokenButtonStyle())
//            .buttonStyle(WorkingButtonStyle())
        }
    }
}
