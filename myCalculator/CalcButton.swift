//
//  CalcButton.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import Foundation
import SwiftUI

struct CalcButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(.cyan)
            .cornerRadius(5)
    }
}
