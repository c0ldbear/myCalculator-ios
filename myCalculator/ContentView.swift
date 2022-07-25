//
//  ContentView.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var text: String  = "Welcome"
    @State var clean: Bool = true
    @State var calculatorViewModel = CalculatorViewModel()
    
    private let rows: [[CalcButtonText]] = [
        [.equal,  .decimal, .zero],
        [.substraction, .one, .two, .three],
        [.addition, .four, .five, .six],
        [.multiplication, .seven, .eight, .nine],
        [.sign, .division, .clear]
    ].reversed()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Spacer()
                Text(text)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Spacer()
                ForEach(rows, id: \.self) {row in
                    HStack {
                        ForEach(row, id: \.self) { calcButton in
                            Button(action: {
                                text = calcButton.rawValue
                            }) {
                                switch calcButton {
                                case .clear:
                                    Image(systemName: "star.fill")
                                default:
                                    Text(calcButton.rawValue)
                                }
                            }
                        }
                    }
                }
                Spacer()
            } // End of VStack
            .buttonStyle(CalcButton())
        } // End of ZStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
