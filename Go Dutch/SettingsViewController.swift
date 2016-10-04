//
//  SettingsViewController.swift
//  Go Dutch
//
//  Created by Chris Argonish on 10/3/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var successMessage: UIImageView!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func didPressBack(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToMenu", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.successMessage.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultTipIndex = defaults.integer(forKey: "defaultTipIndex")
        tipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    @IBAction func didSave(_ sender: AnyObject) {
        self.successMessage.alpha = 1
        let defaults = UserDefaults.standard
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
        dismiss(animated: true, completion: nil)
    }
}

