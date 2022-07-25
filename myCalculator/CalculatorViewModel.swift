//
//  CalculatorViewModel.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import Foundation

final class CalculatorViewModel: ObservableObject {
    @Published private(set) var calculatorModel = CalculatorModel()
    
    func setInput1(_ input: String) {
        calculatorModel.setInput1(Double(input))
    }
    
    func setInput2(_ input: String) {
        calculatorModel.setInput2(Double(input))
    }
    
    func setOperation(_ input: String) {
        calculatorModel.setOperator(CalculatorModel.Operation(input)) // Change to have method 'setOperator' to have string as input?
    }
    
    func calculateResult() -> String {
        return "\(calculatorModel.getResult())"
    }
}
