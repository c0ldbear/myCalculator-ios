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
        case none
        
        init(_ operation: String) {
            switch operation.lowercased() {
            case "addition":
                self = .addition
            case "substraction":
                self = .substraction
            case "multiplication":
                self = .multiplication
            case "division":
                self = .division
            default:
                self = .none
                
            }
        }
    }
    
    private var input1: Double?
    private var input2: Double?
    private var result: Double?
    private var currentOperator: Operation? 
    
   
    mutating func setInput1(_ input: Double?) {
        input1 = input
    }
    
    mutating func setInput2(_ input: Double?) {
        input2 = input
    }
    
    mutating func setOperator(_ selectedOperator: Operation?) {
        currentOperator = selectedOperator
    }
    
    mutating func getResult() -> Double {
        calculateResult()
        return result ?? 0
    }
    
    mutating func calculateResult() {
        let double1 = input1 ?? 0
        let double2 = input2 ?? 0
        
        switch currentOperator {
        case .addition:
            result = double1 + double2
        case .substraction:
            result = double1 - double2
        case .multiplication:
            result = double1 * double2
        case .division:
            result = double2 == 0 ? 0 : double1 / double2
        default:
            return
        }
    }
}
