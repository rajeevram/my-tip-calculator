//
//  ViewController.swift
//  Tiptron
//
//  Created by Rajeev Ram on 7/1/18.
//  Copyright © 2018 Rajeev Ram. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    /* Properties, Initalizers, Overrides */
    
    // UI Variables
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet var background: UIView!
    
    // Settings Variables
    var themeNumber = -1
    var percentages = [0.15,0.18,0.2,0.22]
    
    // Storage Variables
    let defaults = UserDefaults.standard
    
    // Overriden methods from superclass
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Calibrate the proper theme and tip value from saved value, if necessary
    override func viewWillAppear(_ animated: Bool) {
        // Ensure theme is correct
        if (themeNumber == -1) {
            themeNumber = defaults.integer(forKey: "themeNumber")
        }
        matchSelectedTheme()
        // Ensure default percentage is correct
        setCustomPercentage(custom: defaults.integer(forKey: "customPercent"))
        calculateValues()
        // Make number pad show up automatically
        checkAmount.becomeFirstResponder()
    }
    
    /* Class Specific Methods */
    
    // Theme color is saved for after exit
    func setThemeNumber(index: Int) {
        themeNumber = index
        defaults.set(themeNumber, forKey: "themeNumber")
    }
    
    func getThemeNumber() -> Int {
        return themeNumber
    }
    
    // Change all nodes to match theme selected
    func matchSelectedTheme() {
        if (themeNumber == 0) { // warm color
            background.backgroundColor = UIColor(red: 1, green: 0.87, blue: 0.74, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            checkAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            tipAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
            totalAmount.textColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
        }
        else if (themeNumber == 1) { // cool color
            background.backgroundColor = UIColor(red: 0.76, green: 0.98, blue: 0.85, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            checkAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            tipAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
            totalAmount.textColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
        }
        else { // dark color
            background.backgroundColor = UIColor(red: 0.64, green: 0.69, blue: 0.76, alpha: 1)
            tipPercentage.tintColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            checkAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            tipAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
            totalAmount.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
        }
    }
    
    // Reset default percentage or else create custom percentage
    func setCustomPercentage(custom: Int) {
        if (custom == 15) {
            tipPercentage.selectedSegmentIndex = 0
        }
        else if (custom == 18) {
            tipPercentage.selectedSegmentIndex = 1
        }
        else if (custom == 20) {
            tipPercentage.selectedSegmentIndex = 2
        }
        else {
            percentages[3] = Double(custom) * 0.01
            tipPercentage.removeSegment(at: 3, animated: true)
            tipPercentage.insertSegment(withTitle: "\(custom)%", at: 3, animated: true)
            tipPercentage.selectedSegmentIndex = 3
        }
    }
    
    // Calculate total and tip from amount and change text appropriately
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
    
    /* Event Handlers */
    
    // Event handler for changing tip and total based on value entered
    @IBAction func changeValues(_ sender: Any) {
        calculateValues()
    }
    
    // Event handler for keyboard toggle with tap to main area
    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true)
    }
    
    // Event handler for moving to settings view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsView = segue.destination as? SettingsViewController
        settingsView?.mainViewController = self
    }
    
}

