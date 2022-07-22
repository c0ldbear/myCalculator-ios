//
//  CalculatorModel.swift
//  myCalculator
//
//  Created by teddy juhlin-henricson on 2022-07-22.
//

import Foundation

struct CalculatorModel {
   enum Operation {
        case addition
        case substraction
        case multiplication
        case division
    }
    
    private var input1: String?
    private var input2: String?
    private var result: String?
    private var currentOperator: Operation? 
    
   
    mutating func setInput1(_ input: String) {
        input1 = input
    }
    
    mutating func setInput2(_ input: String) {
        input2 = input
    }
    
    mutating func setOperator(_ selectedOperator: Operation) {
        currentOperator = selectedOperator
    }
    
    mutating func calculateResult(input1: String, input2: String) {
        let double1 = Double(input1) ?? 0
        let double2 = Double(input2) ?? 0
        
        switch currentOperator {
        case .addition:
            result = String(double1 + double2)
        case .substraction:
            result = String(double1 - double2)
        case .multiplication:
            result = String(double1 * double2)
        case .division:
            result = double2 == 0 ? "0" : String(double1 / double2)
        case .none:
            return
        }
    }
}
