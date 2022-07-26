//
//  ContentView.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    let title = "m i n i r a e k n a r e".uppercased()
    @State var text: String  = ""
    @State var clean: Bool = true
    @State var calculatorViewModel = CalculatorViewModel()
    
    private let rows: [[CalcButtonText]] = [
        [.division, .sign, .clear],
        [.multiplication, .seven, .eight, .nine],
        [.addition, .four, .five, .six],
        [.substraction, .one, .two, .three],
        [.equal,  .decimal, .zero]
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text(title)
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 2)
                    )
                Spacer()
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                ForEach(rows, id: \.self) {row in
                    HStack {
                        ForEach(row, id: \.self) { calcButton in
                            Button(action: {
                                let rawString = calcButton.rawValue
                                switch calcButton { // TODO: Move this logic to ViewModel?
                                case .clear:
                                    text = rawString
                                    calculatorViewModel.clear()
                                case .addition, .substraction, .multiplication, .division:
                                    calculatorViewModel.setOperation(rawString)
                                    calculatorViewModel.setInput(text)
                                    text = ""
                                case .equal:
                                    calculatorViewModel.setInput(text)
                                    text = calculatorViewModel.calculateResult()
                                    calculatorViewModel.clear()
                                case .sign:
                                    text = calculatorViewModel.toggleSign(text)
                                default:
                                    text += rawString
                                }
                                
                            }) { // Set the "text" of the button
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
