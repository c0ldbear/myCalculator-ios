//
//  ContentView.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Hello"
    @State var favorite = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                HStack {
                    Button("1", action: {
                        text = "1"
                    })
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    
                    Button("2", action: {
                        text = "2"
                    })
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    
                    Button("3", action: {
                        text = "3"
                    })
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                }
                HStack {
                    Button(action: {
                        favorite.toggle()
                    }) {
                        Image(systemName: favorite ? "star.fill" : "star")
                            
                    }
                    Button(action: {
                        text = "5"
                    }) {
                        Text("5")
                    }
                }
                .buttonStyle(CalcButton())
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalcButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(.cyan)
            .foregroundColor(.white)
    }
}
