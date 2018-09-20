//
//  BorderView.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 03/07/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class BorderView: UIView {
    override func layoutSubviews() {
        self.layer.borderColor = UIColor(red: (23/255.0), green: (134/255.0), blue: (183/255.0), alpha: 1.0).cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 4
        if (self.tag != 1){
            let height = self.frame.size.height
            let width = self.frame.size.width
            let y = self.frame.origin.y
            self.frame = CGRect(x :1500,y : y,width: width,height: height)
       }
    }
}
