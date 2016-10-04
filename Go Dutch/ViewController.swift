//
//  ViewController.swift
//  GoDutch
//
//  Created by Chris Argonish on 6/27/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var gratuityAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var reminderView: UIView!
    
    override func viewDidLoad() {
        navigationController!.navigationBar.titleTextAttributes =
            ([NSFontAttributeName: UIFont(name: "SalesforceSans-Bold", size: 22)!,
                NSForegroundColorAttributeName: UIColor.white])
        fadeIfNull()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let font = UIFont(name: "SalesforceSans-Regular", size: 10)
        tipControl.setTitleTextAttributes([NSFontAttributeName: font!], for: UIControlState())
        billField.keyboardAppearance = UIKeyboardAppearance.dark
        billField.becomeFirstResponder()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "defaultTipIndex")
        self.tipControl.selectedSegmentIndex = defaultTipIndex
        calculateTip(self)
        billField.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        fadeIfNull()
        billField.clearButtonMode = .whileEditing
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func unwindToMenu(segue: UIStoryboardSegue) {}
    
    func fadeIfNull() {
        if billField.text == "" {
            self.tipControl.alpha = 0
            self.tipLabel.alpha = 0
            self.totalLabel.alpha = 0
            self.gratuityAmountLabel.alpha = 0
            self.totalAmountLabel.alpha = 0
            self.reminderView.alpha = 0
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                self.tipControl.alpha = 1
                self.tipLabel.alpha = 1
                self.totalLabel.alpha = 1
                self.gratuityAmountLabel.alpha = 1
                self.totalAmountLabel.alpha = 1
                self.reminderView.alpha = 1
            })
    }
    }
}

