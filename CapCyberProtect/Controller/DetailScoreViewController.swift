//
//  DetailScoreViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 26/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit
import AVKit

class DetailScoreViewController: UIViewController {
    @IBOutlet weak var enterpriseActivityBar: UIProgressView!
    @IBOutlet weak var enterpriseNumber: UILabel!
    @IBOutlet weak var itInfraActivityBar: UIProgressView!
    @IBOutlet weak var itInfraNumber: UILabel!
    @IBOutlet weak var endPointSecurityActivityBar: UIProgressView!
    @IBOutlet weak var endPointSecurityNumber: UILabel!
    @IBOutlet weak var outsoarcingActivityBar: UIProgressView!
    @IBOutlet weak var outsorcingNumber: UILabel!
    @IBOutlet weak var securityMonitoringActivityBar: UIProgressView!
    @IBOutlet weak var securityMonitoringNumber: UILabel!
    @IBOutlet weak var criticalSituationActivityBar: UIProgressView!
    @IBOutlet weak var detailBG: UIView!
    @IBOutlet weak var criticalSituationNumber: UILabel!
    
    
    var avPlayer: AVPlayer!
    var avPlayerLayer: AVPlayerLayer!
    var paused: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressBarUIChange()
        detailBG?.backgroundColor = UIColor(white: 1, alpha: 0.5)
        let localCategoryValues : [Float] = UserDefaults.standard.array(forKey: "categoryValues") as! [Float]
//        self.enterpriseActivityBar.setProgress(localCategoryValues[0]/10.0 , animated: true)

        dataSetter(localValues: localCategoryValues)
        // Do any additional setup after loading the view.
        
        //
        let theURL = Bundle.main.url(forResource: "BG_video", withExtension: "mp4")
        
        avPlayer = AVPlayer(url: theURL!)
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        avPlayer.volume = 0
        avPlayer.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        
        
        avPlayerLayer.frame = view.layer.bounds
        view.backgroundColor = UIColor.clear;
        view.layer.insertSublayer(avPlayerLayer, at: 0)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidReachEnd),
                                               name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                               object: avPlayer.currentItem)
    }
    
    func dataSetter(localValues : [Float]) {
        self.enterpriseActivityBar.setProgress(localValues[0]/100.0 , animated: true)
        self.enterpriseNumber.text = "\(localValues[0])" + "%"
        
        self.itInfraActivityBar.setProgress(localValues[1]/100.0, animated: true)
        self.itInfraNumber.text = "\(localValues[1])" + "%"
        
        self.endPointSecurityActivityBar.setProgress(localValues[2]/100.0, animated: true)
        self.endPointSecurityNumber.text = "\(localValues[2])" + "%"
        
        self.outsoarcingActivityBar.setProgress(localValues[3]/100.0, animated: true)
        self.outsorcingNumber.text = "\(localValues[3])" + "%"
        
        self.securityMonitoringActivityBar.setProgress(localValues[4]/100.0, animated: true)
        self.securityMonitoringNumber.text = "\(localValues[4])" + "%"
    }
    
    func progressBarUIChange() {
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 6.0)
        self.enterpriseActivityBar.transform = transform
        self.itInfraActivityBar.transform = transform
        self.endPointSecurityActivityBar.transform = transform
        self.outsoarcingActivityBar.transform = transform
        self.securityMonitoringActivityBar.transform = transform
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func playerItemDidReachEnd(notification: NSNotification) {
        let p: AVPlayerItem = notification.object as! AVPlayerItem
        p.seek(to: kCMTimeZero)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        avPlayer.play()
        paused = false
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        avPlayer.pause()
        paused = true
    }
}
