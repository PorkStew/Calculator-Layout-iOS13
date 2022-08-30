//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Stewart Clay.
//  Copyright © 2022 STEWARTCLAY. All rights reserved.
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
        textLabel.text = cal.equal()
    }
    @IBAction func resetButton(_ sender: UIButton) {
        cal.resetCalculator()
        textLabel.text = "0"
    }
}

