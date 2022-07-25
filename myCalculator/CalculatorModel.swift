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
        
        init(_ operation: String?) {
            guard let operation = operation?.lowercased() else {
                self = .none
                return
            }
            
            switch operation {
            case "+":
                self = .addition
            case "-":
                self = .substraction
            case "x":
                self = .multiplication
            case "÷":
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
    
    mutating func setInput(_ input: Double?) {
        if input1 == nil {
            print("Set input1")
            input1 = input
        } else {
            print("Set input2")
            input2 = input
        }
    }
    
    mutating func setOperator(_ selectedOperator: String?) {
        currentOperator = Operation(selectedOperator)
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
    
    mutating func reset() {
        input1 = nil
        input2 = nil
        result = nil
        currentOperator = nil
    }
    
    func toggleSign(_ input: Double?) -> Double {
        return -1 * (input ?? 0)
    }
    
}
