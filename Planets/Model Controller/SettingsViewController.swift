//
//  SettingsViewController.swift
//  Planets
//
//  Created by Nathan Hedgeman on 5/15/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var Switch: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
     
        super.viewWillAppear(animated)
        
        
        self.updateViews()

        // Do any additional setup after loading the view.
    }
    
    
    private func updateViews() {
        
        let userDefaults = UserDefaults.standard
        self.Switch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
        
    }
    

    @IBAction func SwitchToggled(_ sender: UISwitch) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
}


extension String {
    
    static var shouldShowPlutoKey = "shouldShowPlutoKey"
    
}
