//
//  BasicViewModifier.swift
//  SampleAlertApp
//
//  Created by Chris Thomas on 17/02/2020.
//  Copyright © 2020 Chris Thomas. All rights reserved.
//

import SwiftUI

struct ButtonBackground: ViewModifier {

    let color: Color

    func body(content: Content) -> some View {
        return content.background(color)
    }
}
