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
    var total = [Int]()
    let cal = calcualtions()
    var result = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //gets number thats pressed
    @IBAction func numberPressed(_ sender: UIButton) {
        //print(sender.currentTitle!)
        number = number + sender.currentTitle!
        textLabel.text = number
    }
    //remove sender??
    @IBAction func symbolPressed(_ sender: UIButton) {
        var op = sender.currentTitle!
        switch op {
        case "+":
            //print("+")
            print("Calculation: \(result) + \(number)")
            result = result + Int(number)!
            number = ""
            print(result)
        case "-":
            print("-")
        case "*":
            print("*")
        case "/":
            print("/")
        default:
            print("Error")
        }
    }
    
    @IBAction func equal(_ sender: Any) {
       
    }
    //reset
    @IBAction func resetButton() {
        textLabel.text = "0"
        number = ""
    }
}

