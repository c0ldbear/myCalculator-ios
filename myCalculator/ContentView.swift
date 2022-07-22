//
//  ContentView.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var text: String  = CalcButtonText.start.rawValue
    @State var clean: Bool = true
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                // Top Row
                HStack {
                    Button(action: {
//                        text = CalcButtonText.clear.rawValue
                    }) {
                        Text("-")
                    }
                    
                    Button(action: {
                        text += CalcButtonText.seven.rawValue
                    }) {
                        Text(CalcButtonText.seven.rawValue)
                    }
                    
                    Button(action: {
                        text += CalcButtonText.eight.rawValue
                    }) {
                        Text(CalcButtonText.eight.rawValue)
                    }
                    
                    Button(action: {
                        text += CalcButtonText.nine.rawValue
                    }) {
                        Text(CalcButtonText.nine.rawValue)
                    }
                }
                // Middle Row
                HStack {
                    Button(action: {
//                        text = CalcButtonText.clear.rawValue
                    }) {
                        Text("+")
                    }
                    
                    Button(action: {
                        text += CalcButtonText.four.rawValue
                    }) {
                        Text(CalcButtonText.four.rawValue)
                    }
                    
                    Button(action: {
                        text += CalcButtonText.five.rawValue
                    }) {
                        Text(CalcButtonText.five.rawValue)
                    }
                    
                    Button(action: {
                        text += CalcButtonText.six.rawValue
                    }) {
                        Text(CalcButtonText.six.rawValue)
                    }
                }
                // Bottom Row
                HStack {
                    Button(action: {
                        text = CalcButtonText.clear.rawValue
                    }) {
                        Image(systemName:  "star.fill" )
                    }
                    
                    Button(action: {
                        text += CalcButtonText.one.rawValue
                    }) {
                        Text("1")
                    }
                    
                    Button(action: {
                        text += CalcButtonText.two.rawValue
                    }) {
                        Text("2")
                    }
                    
                    Button(action: {
                        text += CalcButtonText.three.rawValue
                    }) {
                        Text(CalcButtonText.three.rawValue)
                    }
                }
                
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
