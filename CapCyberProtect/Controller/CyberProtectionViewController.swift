//
//  CyberProtectionViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 27/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class CyberProtectionViewController: UIViewController {

    @IBOutlet weak var enterpriseControlButton: UIButton!
    @IBOutlet weak var itInfraButton: UIButton!
    @IBOutlet weak var endpointSecurityButton: UIButton!
    @IBOutlet weak var outsourcingButton: UIButton!
    @IBOutlet weak var securityMonitoringButton: UIButton!
    @IBOutlet weak var criticalSituationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterpriseControlButton.layer.cornerRadius = 15
        self.enterpriseControlButton.layer.borderWidth = 1
        self.enterpriseControlButton.layer.borderColor = UIColor.clear.cgColor
        
        self.itInfraButton.layer.cornerRadius = 15
        self.itInfraButton.layer.borderWidth = 1
        self.itInfraButton.layer.borderColor = UIColor.clear.cgColor
        
        self.endpointSecurityButton.layer.cornerRadius = 15
        self.endpointSecurityButton.layer.borderWidth = 1
        self.endpointSecurityButton.layer.borderColor = UIColor.clear.cgColor
        
        
        self.outsourcingButton.layer.cornerRadius = 15
        self.outsourcingButton.layer.borderWidth = 1
        self.outsourcingButton.layer.borderColor = UIColor.clear.cgColor
        
        
        self.securityMonitoringButton.layer.cornerRadius = 15
        self.securityMonitoringButton.layer.borderWidth = 1
        self.securityMonitoringButton.layer.borderColor = UIColor.clear.cgColor
        
        self.criticalSituationButton.layer.cornerRadius = 15
        self.criticalSituationButton.layer.borderWidth = 1
        self.criticalSituationButton.layer.borderColor = UIColor.clear.cgColor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
