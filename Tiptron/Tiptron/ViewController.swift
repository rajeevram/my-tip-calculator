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
    @IBOutlet var background: UIView!
    
    // Settings Variables
    var themeNumber = 0
    var percentages = [0.15,0.18,0.2,0.22]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        matchSelectedTheme()
        calculateValues()
        checkAmount.becomeFirstResponder()
    }
    
    func setThemeNumber(index: Int) {
        themeNumber = index
    }
    
    func getThemeNumber() -> Int {
        return themeNumber
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Event handler for keyboard toggle with tap to main area
    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true)
    }
    
    func calculateValues() {
        if (checkAmount.text == "") {
            tipAmount.text = ""
            totalAmount.text = ""
        }
        else {
            let check = Double(checkAmount.text!) ?? 0
            let tip = check * percentages[tipPercentage.selectedSegmentIndex]
            let total = check + tip
            tipAmount.text = String(format:"+\t$%.2f",tip)
            totalAmount.text = String(format:"=\t$%.2f",total)
        }
    }
    
    // Event handler for changing tip and total based on value entered
    @IBAction func changeValues(_ sender: Any) {
        calculateValues()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsView = segue.destination as? SettingsViewController
        settingsView?.mainViewController = self
    }
    
    func matchSelectedTheme() {
        if (themeNumber == 0) {
            background.backgroundColor = UIColor(red: 1, green: 0.87, blue: 0.74, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            checkAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            tipAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            totalAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
        }
        else if (themeNumber == 1) {
            background.backgroundColor = UIColor(red: 0.76, green: 0.98, blue: 0.85, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            checkAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            tipAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            totalAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
        }
        else {
            background.backgroundColor = UIColor(red: 0.64, green: 0.69, blue: 0.76, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            checkAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            tipAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            totalAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
        }
    }
    
}

