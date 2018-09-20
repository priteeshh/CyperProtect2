//
//  CyberDescViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 27/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class CyberDescViewController: UIViewController {

    @IBOutlet weak var popupContentContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.popupContentContainerView.layer.borderWidth = 1
        self.popupContentContainerView.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        self.popupContentContainerView.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneClicked(_ sender: Any) {
        dismiss(animated: true)
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
extension CyberDescViewController: MIBlurPopupDelegate {
    
    var popupView: UIView {
        
        return self.popupContentContainerView ?? UIView()
    }
    
    var blurEffectStyle: UIBlurEffectStyle {
        return UIBlurEffectStyle.light
    }
    
    var initialScaleAmmount: CGFloat {
        return 96.0
    }
    
    var animationDuration: TimeInterval {
        return 0.5
    }
}

