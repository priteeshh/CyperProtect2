//
//  PopupVC.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 20/09/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import AVFoundation

class PopupVC: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    var delegate : PopupCloseDelegate? = nil
    var overallScore : Float = 0.0

    let synth = AVSpeechSynthesizer()
    var utterance = AVSpeechUtterance(string: "")
    override func viewDidLoad() {
        scoreLabel.text = "Your Overall Score is \(overallScore) %"
        super.viewDidLoad()
        showAnimate()
        speakOut()
    }
    @IBAction func Close_popupView(_ sender: Any) {
        removeAnimate()
        delegate?.afterCloseButtonTapped()
        synth.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removeAnimate(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: {(finished : Bool) in
            if(finished)
            {
                self.willMove(toParentViewController: nil)
                self.view.removeFromSuperview()
                self.removeFromParentViewController()
            }
        })
    }
    func speakOut(){
        let string = "A large tropical depression has caused flooding in some areas of Fiji. On the main island of Viti Levu, heavy rain has caused flooding in the Ba, Nadi, and Sigatoka areas causing flooding in some low lying areas. A number of villages have been affected. Some roads to the Nadi Airport are under water and currently impassable however water levels are expected to subside later today. All resorts and hotels are operating normally. The Fiji Meteorological Service advises that the depression is moving away slowly, but heavy rain is expected to continue over much of the country today and over the next 2-3 days."
        self.adviceLable.text = string
        utterance = AVSpeechUtterance(string: string)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        synth.speak(utterance)
    }

}
