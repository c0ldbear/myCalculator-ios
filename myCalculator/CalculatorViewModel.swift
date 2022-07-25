//
//  CalculatorViewModel.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import Foundation

final class CalculatorViewModel: ObservableObject {
    private(set) var calculatorModel = CalculatorModel() // To be @Published, or not to be @Published? That's the question.
    
    func setInput(_ input: String) {
        print(input)
        calculatorModel.setInput(Double(input))
    }
    
    func setOperation(_ input: String) {
        print(input)
        calculatorModel.setOperator(input) // Change to have method 'setOperator' to have string as input?
    }
    
    func calculateResult() -> String {
        print("Calculating result!")
        return "\(calculatorModel.getResult())"
    }
    
    func clear() {
        calculatorModel.reset()
    }
    
    func toggleSign(_ textInput: String) -> String {
        return "\(calculatorModel.toggleSign(Double(textInput)))"
    }
    
}
