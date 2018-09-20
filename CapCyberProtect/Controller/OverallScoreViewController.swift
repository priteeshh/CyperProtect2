//
//  OverallScoreViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 26/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class OverallScoreViewController: UIViewController,LMGaugeViewDelegate,PopupCloseDelegate {

    @IBOutlet weak var cyberProtectionButton: UIButton!
    @IBOutlet weak var cyberInsuranceButton: UIButton!
    @IBOutlet weak var detailedScoreButton: UIButton!
    @IBOutlet weak var overAllNumber: UILabel!
    @IBOutlet weak var overAllActivityBar: UIProgressView!
    @IBOutlet weak var OverallProgressView: LMGaugeView!
    @IBOutlet weak var blurView: UIView!
    
    var timeDelta :CGFloat = 1.0;
    var  velocity : CGFloat = 0
    var  acceleration: NSInteger = 5
    var blurEffect = UIBlurEffect(style: .dark)



    
    var progressPercentage : Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 6.0)
        self.cyberInsuranceButton.layer.cornerRadius = 15
        self.cyberInsuranceButton.layer.borderWidth = 1
        self.cyberInsuranceButton.layer.borderColor = UIColor.clear.cgColor
        
        self.cyberProtectionButton.layer.cornerRadius = 15
        self.cyberInsuranceButton.layer.borderWidth = 1
        self.cyberInsuranceButton.layer.borderColor = UIColor.clear.cgColor
        
        self.detailedScoreButton.layer.cornerRadius = 15
        self.detailedScoreButton.layer.borderWidth = 1
        self.detailedScoreButton.layer.borderColor = UIColor.clear.cgColor
        OverallProgressView.delegate = self
        OverallProgressView.minValue = 0
        OverallProgressView.maxValue = 100
        OverallProgressView.limitValue = 50
        
        
        
        OverallProgressView.unitOfMeasurementFont = UIFont (name: "Helvetica Neue", size: 30)
        OverallProgressView.unitOfMeasurement = "%"
        Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(updateGaugeTimer), userInfo: nil, repeats: true)
        Timer.scheduledTimer(timeInterval: 1.9, target: self, selector: #selector(showPopOver), userInfo: nil, repeats: false)

        //showPopOver()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

    }
    func afterCloseButtonTapped() {
        for subview in view.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
    }
    func gaugeView(_ gaugeView: LMGaugeView!, ringStokeColorForValue value: CGFloat) -> UIColor! {
        if (value >= self.OverallProgressView.limitValue) {
            return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1);
        }
        return #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1);
    }
    @objc func updateGaugeTimer(){
        self.OverallProgressView.value = CGFloat(progressPercentage)
    }
    @objc func showPopOver()  {
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            view.backgroundColor = .clear

            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = self.view.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

            view.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
        } else {
            view.backgroundColor = .black
        }

        let popvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popOver_Sid") as! PopupVC
        popvc.delegate = self
        popvc.overallScore = progressPercentage
        self.addChildViewController(popvc)
        
        popvc.view.frame = self.view.frame
        
        self.view.addSubview(popvc.view)
        
        popvc.didMove(toParentViewController: self)
    }


}
