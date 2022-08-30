//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Stewart Clay.
//  Copyright © 2022 STEWARTCLAY. All rights reserved.
//

import Foundation

struct calcualtions {
    // Variable Declarations
    var firstNum: String = ""
    var symbol: String = ""
    var secondNum: String = ""
    var haveResult: Bool = false
    var resultNumber: String = ""
    var numAfterResult: String = ""
    
    mutating func numberPressed(title: String) -> String{
        if symbol == "" {
            firstNum += title
            return firstNum
        } else if symbol != "" && !haveResult {
            secondNum += title
            return secondNum
        } else if symbol != "" && haveResult {
            numAfterResult += title
            return numAfterResult
        }
        return "0"
    }
    
    mutating func calculation() -> Double {
        // Switch statement to check which calculator symbol is pressed
        switch symbol {
        case "+":
            if !self.haveResult {
                self.haveResult = true
                return Double(firstNum)! + Double(secondNum)!
            } else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        case "-":
            if !self.haveResult {
                self.haveResult = true
                return Double(firstNum)! - Double(secondNum)!
            } else {
                return Double(resultNumber)! - Double(numAfterResult)!
            }
        case "×":
            if !self.haveResult {
                self.haveResult = true
                return Double(firstNum)! * Double(secondNum)!
            } else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        case "÷":
            if !self.haveResult {
                self.haveResult = true
                return Double(firstNum)! / Double(secondNum)!
            } else {
                return Double(resultNumber)! / Double(numAfterResult)!
            }
        default:
            print("Error: The operation passed in does not match any of the cases")            
        }
        return 0
    }
    // Resets calculator for new calculation
    mutating func resetCalculator() {
        firstNum = ""
        symbol = ""
        secondNum = ""
        haveResult = false
        resultNumber = ""
        numAfterResult = ""
    }
    mutating func equal() -> String{
        resultNumber = String(calculation())
        numAfterResult = "";
        // Seperates number into an array based on decimal
        let numArray = resultNumber.components(separatedBy: ".")
        // Should number after the deimal be just 0 and nothing else then print
        if numArray[1] == "0" {
            return numArray[0]
        } else {
            return resultNumber
        }
    }
}
