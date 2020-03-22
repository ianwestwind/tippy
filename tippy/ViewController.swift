//
//  ViewController.swift
//  tippy
//
//  Created by Ian Kim on 3/20/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
    
        // Calculate the tip and total
        let tip = bill * 0.1
        let total = bill + tip
    
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
}

