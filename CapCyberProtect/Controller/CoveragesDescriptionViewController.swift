//
//  CoveragesDescriptionViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 26/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class CoveragesDescriptionViewController: UIViewController {
   
    @IBOutlet weak var popupContentContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationCapturesStatusBarAppearance = true
        self.popupContentContainerView.layer.borderWidth = 1
        self.popupContentContainerView.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        self.popupContentContainerView.layer.cornerRadius = 5
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doneTapped(_ sender: Any) {
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
extension CoveragesDescriptionViewController: MIBlurPopupDelegate {
    
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

