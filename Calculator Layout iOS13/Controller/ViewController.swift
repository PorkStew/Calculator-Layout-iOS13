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
    
    var cal = calcualtions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //gets number thats pressed
    @IBAction func numberPressed(_ sender: UIButton) {
        textLabel.text = String(cal.numberPressed(title: sender.currentTitle!))
    }
    
    @IBAction func symbolSelected(_ sender: UIButton) {
        cal.symbol = sender.currentTitle!
    }
    
    @IBAction func equal(_ sender: UIButton) {
        cal.resultNumber = String(cal.calculation())
        textLabel.text = cal.resultNumber
        cal.numAfterResult = "";
    }
    @IBAction func resetButton(_ sender: UIButton) {
        cal.resetCalculator()
        textLabel.text = "0"
    }
}

