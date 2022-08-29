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
    var number = ""
    //var total = [Int]()
    let cal = calcualtions()
    var result = 0
    var selectedSymbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //gets number thats pressed
    @IBAction func numberPressed(_ sender: UIButton) {
        number = number + sender.currentTitle!
        textLabel.text = number
    }
    
    @IBAction func symbolSelected(_ sender: UIButton) {
        let selected = sender.currentTitle!
        selectedSymbol = selected
        print(selectedSymbol)
        calculate()
    }
    
    @IBAction func equal(_ sender: UIButton) {
        let selected = sender.currentTitle!
        calculate()
    }
    @IBAction func resetButton(_ sender: UIButton) {
        textLabel.text = "0"
        number = ""
        result = 0
    }
    func calculate() {
        print("SYMBOL: \(selectedSymbol)")
        print("Number: \(number)")
        switch selectedSymbol {
        case "+":
            result = result + Int(number)!
            number = ""
            textLabel.text = String(result)
        case "-":
            result = result - Int(number)!
            number = ""
            textLabel.text = String(result)
        case "×":
            print("times")
            print(Int(number)!)
            print(result)
            if result != 0 {
            result = result * Int(number)!
                number = ""
                textLabel.text = String(result)
            }
            print(result)
        case "÷":
            print("divide")
            print(result)
            if result != 0 {
            let c = Int(number)!
            print("fisjfijsafijas \(c) \(result)")
            result = c / result
            }
            print(result)
            number = ""
            textLabel.text = String(result)
        default:
            print("Error")
        }
    }
}

