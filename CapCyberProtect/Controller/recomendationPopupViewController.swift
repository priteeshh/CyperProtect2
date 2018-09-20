//
//  recomendationPopupViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 29/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class recomendationPopupViewController: UIViewController {

    @IBOutlet weak var recoPopUp: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
extension recomendationPopupViewController: MIBlurPopupDelegate {
    
    var popupView: UIView {
        
        return self.recoPopUp ?? UIView()
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
