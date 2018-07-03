//
//  SettingsViewController.swift
//  Tiptron
//
//  Created by Rajeev Ram on 7/2/18.
//  Copyright © 2018 Rajeev Ram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // UI Variables
    @IBOutlet var background: UIView!
    @IBOutlet weak var themeChoices: UISegmentedControl!
    @IBOutlet weak var customTipAmount: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    // Initial View Controller
    var mainViewController: MainViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        themeChoices.selectedSegmentIndex = (mainViewController?.getThemeNumber())!
        changeTheme()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeTheme() {
        if (themeChoices.selectedSegmentIndex == 0) {
            background.backgroundColor = UIColor(red: 1, green: 0.87, blue: 0.74, alpha: 1)
            themeChoices.tintColor = UIColor(red: 1, green: 0.2, blue: 0, alpha: 1)
        }
        else if (themeChoices.selectedSegmentIndex == 1) {
            background.backgroundColor = UIColor(red: 0.76, green: 0.98, blue: 0.85, alpha: 1)
            themeChoices.tintColor = UIColor(red: 0, green: 0.4, blue: 0.28, alpha: 1)
        }
        else {
            background.backgroundColor = UIColor(red: 0.64, green: 0.69, blue: 0.76, alpha: 1)
            themeChoices.tintColor = UIColor(red: 0.25, green: 0.25, blue: 0.3, alpha: 1)
        }
    }
    
    @IBAction func newThemeChosen(_ sender: Any) {
        changeTheme()
        mainViewController?.setThemeNumber(index: themeChoices.selectedSegmentIndex)
    }

    @IBAction func pressEnterCustom(_ sender: Any) {
        let newPercentage = Int(customTipAmount.text!) ?? -1
        if (newPercentage > 0) {
            mainViewController?.tipPercentage.removeSegment(at: 3, animated: false)
            mainViewController?.tipPercentage.insertSegment(withTitle: "\(newPercentage)%", at: 3, animated: false)
            mainViewController?.percentages[3] = Double(newPercentage) * 0.01
            messageLabel.text = "Custom percentage replaced!"
            mainViewController?.tipPercentage.selectedSegmentIndex = 3
        }
        else {
            messageLabel.text = "Please enter valid integer."
        }
        
    }
}
