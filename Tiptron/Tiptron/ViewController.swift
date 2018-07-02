//
//  ViewController.swift
//  Tiptron
//
//  Created by Rajeev Ram on 7/1/18.
//  Copyright © 2018 Rajeev Ram. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // UI Variables
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Event handler for keyboard toggle with tap to main area
    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true)
        //checkAmount.textColor = UIColor.gray
    }
    
    // Event handler for changing tip and total based on value entered
    @IBAction func changeValues(_ sender: Any) {
        let check = Double(checkAmount.text!) ?? 0
        let percentages = [0.15,0.18,0.2,0.22]
        let tip = check * percentages[tipPercentage.selectedSegmentIndex]
        let total = check + tip
        tipAmount.text = String(format:"+\t$%.2f",tip)
        totalAmount.text = String(format:"=\t$%.2f",total)
    }
}

