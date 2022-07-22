//
//  ContentView.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var text: CalcButtonText = .start
    @State var favorite = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text(text.rawValue)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                HStack {
                    Button(action: {
                        favorite.toggle()
                        text = favorite ? .star : .noStar
                    }) {
                        Image(systemName: favorite ? "star.fill" : "star")
                        
                    }
                    
                    Button(action: {
                        text = .one
                    }) {
                        Text("1")
                    }
                    
                    Button(action: {
                        text = .two
                    }) {
                        Text("2")
                    }
                }
                .buttonStyle(CalcButton())
            } // End of VStack
        } // End of ZStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
