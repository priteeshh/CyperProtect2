//
//  CoveragesViewController.swift
//  CapCyberProtect
//
//  Created by Capgemini on 19/9/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class CoveragesViewController: UIViewController {

    @IBOutlet weak var buisnessInturaptionButton: UIButton!
    @IBOutlet weak var digitalAssetButton: UIButton!
    @IBOutlet weak var breachButton: UIButton!
    @IBOutlet weak var cyberForensicButton: UIButton!
    @IBOutlet weak var cyberExtortionButton: UIButton!
    @IBOutlet weak var inputSensetiveDataButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.buisnessInturaptionButton.layer.cornerRadius = 15
        self.buisnessInturaptionButton.layer.borderWidth = 1
        self.buisnessInturaptionButton.layer.borderColor = UIColor.clear.cgColor
        
        self.digitalAssetButton.layer.cornerRadius = 15
        self.digitalAssetButton.layer.borderWidth = 1
        self.digitalAssetButton.layer.borderColor = UIColor.clear.cgColor
        
        self.breachButton.layer.cornerRadius = 15
        self.breachButton.layer.borderWidth = 1
        self.breachButton.layer.borderColor = UIColor.clear.cgColor
        
        self.cyberForensicButton.layer.cornerRadius = 15
        self.cyberForensicButton.layer.borderWidth = 1
        self.cyberForensicButton.layer.borderColor = UIColor.clear.cgColor
        
        self.cyberExtortionButton.layer.cornerRadius = 15
        self.cyberExtortionButton.layer.borderWidth = 1
        self.cyberExtortionButton.layer.borderColor = UIColor.clear.cgColor
        
        self.inputSensetiveDataButton.layer.cornerRadius = 15
        self.inputSensetiveDataButton.layer.borderWidth = 1
        self.inputSensetiveDataButton.layer.borderColor = UIColor.clear.cgColor
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
