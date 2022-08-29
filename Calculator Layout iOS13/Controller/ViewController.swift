//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    let cal = calcualtions()
    
    var firstNum: String = ""
    var operation: String = ""
    var secondNum: String = ""
    var haveResult: Bool = false
    var resultNumber: String = ""
    var numAfterResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //gets number thats pressed
    @IBAction func numberPressed(_ sender: UIButton) {
        if operation == "" {
            firstNum += sender.currentTitle!
            textLabel.text = firstNum
        } else if operation != "" && !haveResult {
            secondNum += sender.currentTitle!
            textLabel.text = secondNum
        } else if operation != "" && haveResult {
            numAfterResult += sender.currentTitle!
            textLabel.text = numAfterResult
        }
    }
    
    @IBAction func symbolSelected(_ sender: UIButton) {
        operation = sender.currentTitle!
    }
    
    @IBAction func equal(_ sender: UIButton) {
        resultNumber = String(calculation())
        textLabel.text = resultNumber
        numAfterResult = "";
    }
    @IBAction func resetButton(_ sender: UIButton) {
        firstNum = ""
        operation = ""
        secondNum = ""
        haveResult = false
        resultNumber = ""
        numAfterResult = ""
        textLabel.text = "0"
    }
    func calculation() -> Double {
        
        switch operation {
        case "+":
            if !haveResult {
                haveResult = true
                return Double(firstNum)! + Double(secondNum)!
            } else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        case "-":
            if !haveResult {
                haveResult = true
                return Double(firstNum)! - Double(secondNum)!
            } else {
                return Double(resultNumber)! - Double(numAfterResult)!
            }
        case "×":
            if !haveResult {
                haveResult = true
                return Double(firstNum)! * Double(secondNum)!
            } else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        case "÷":
            if !haveResult {
                haveResult = true
                return Double(firstNum)! / Double(secondNum)!
            } else {
                return Double(resultNumber)! / Double(numAfterResult)!
            }
        default:
            print("Error")
            
        }
        return 0
        
    }
}

