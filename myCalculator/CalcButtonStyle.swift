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
            .frame(width: 50, height: 50)
            .foregroundColor(.white)
            .background(.cyan)
            .cornerRadius(5)
            .font(.title)
    }
}
