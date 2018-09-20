//
//  SensitiveDataTableViewCell.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 29/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class SensitiveDataTableViewCell: UITableViewCell {

    @IBOutlet weak var separator2: UIView!
    @IBOutlet weak var separatot1: UIView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var switchPart: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
