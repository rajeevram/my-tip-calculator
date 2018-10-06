//
//  SettingsViewController.swift
//  Tiptron
//
//  Created by Rajeev Ram on 7/2/18.
//  Copyright © 2018 Rajeev Ram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    /*----------Properties and Initalizers----------*/
    
    // UI, UX Outlet Variables
    @IBOutlet var background: UIView!
    @IBOutlet weak var themeChoices: UISegmentedControl!
    @IBOutlet weak var customTipAmount: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    // Delegation Variables
    static var themeNumber : Int = 0
    var settingsDelegate : SettingsDelegate?
    
    /*----------Overrides From Parent----------*/
    
    // Overriden methods from superclass
    override func viewDidLoad() {
        super.viewDidLoad()
        themeChoices.selectedSegmentIndex = SettingsViewController.themeNumber
        changeTheme()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*----------Instance and Helper Methods----------*/
    
    // Choose from one of three themes
    func changeTheme() {
        if (themeChoices.selectedSegmentIndex == 0) { // warm color
            background.backgroundColor = UIColor(red: 1, green: 0.87, blue: 0.74, alpha: 1)
            themeChoices.tintColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
        }
        else if (themeChoices.selectedSegmentIndex == 1) { // cool color
            background.backgroundColor = UIColor(red: 0.76, green: 0.98, blue: 0.85, alpha: 1)
            themeChoices.tintColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
        }
        else { // dark color
            background.backgroundColor = UIColor(red: 0.64, green: 0.69, blue: 0.76, alpha: 1)
            themeChoices.tintColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
        }
    }
    
    /*----------Event Handlers----------*/
    
    // Send message back to main view for theme change
    @IBAction func newThemeChosen(_ sender: Any) {
        settingsDelegate?.changeOverallTheme(selected: themeChoices.selectedSegmentIndex)
        changeTheme()
    }
    
    // When entering the text field
    @IBAction func enterTextField(_ sender: Any) {
        customTipAmount.text! = ""
        messageLabel.text = ""
    }
    
    // When exiting the text field
    @IBAction func endTextEdit(_ sender: Any) {
        view.endEditing(true)
        pressEnterCustom(self)
    }
    
    // Enter custom percentage and send message back to main view
    @IBAction func pressEnterCustom(_ sender: Any) {
        let newPercentage = Int(customTipAmount.text!) ?? -1
        if (newPercentage > 0) { // valid number
            settingsDelegate?.changePercentageBar(percentage: newPercentage)
            if (newPercentage == 15 || newPercentage == 18 || newPercentage == 20) {
                messageLabel.text = "Default percentage changed!"
            }
            else {
                messageLabel.text = "Custom percentage replaced!"
            }
        }
        else { // invalid number
            if (customTipAmount.text != "") {
                messageLabel.text = "Please enter valid integer."
            }
        }
        
    }
    
}

/**
 * This delegation protocol is used to passs the changed settings
 * to the MainViewController from the SettingsViewController
 */
protocol SettingsDelegate : class {
    func changePercentageBar(percentage : Int)
    func changeOverallTheme(selected : Int)
}
