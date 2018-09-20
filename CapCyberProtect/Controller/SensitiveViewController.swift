//
//  SensitiveViewController.swift
//  CapCyberProtect
//
//  Created by Ranbijay SinghDeo on 29/06/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class SensitiveViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {

    @IBOutlet weak var sensetiveDataTextField: UITextField!
    @IBOutlet weak var sensitiveTableView: UITableView!
    var coverageArray : [String] = ["Coverage", "Business Interruption", "Breach Response", "Digital Asset", "Cyber Forensic", "Cyber Extortion"]
    var limitArray : [String] = ["Limit", "0 $", "0 $", "0 $", "0 $", "0 $"]
    var limitArray1 : [String] = ["Limit", "23 $", "65 $", "12 $", "345 $", "32 $"]
    
    var limitArray2 : [String] = ["Limit", "234 $", "657 $", "122 $", "345 $", "324 $"]
    
    var limitArray3 : [String] = ["Limit", "2342 $", "6575 $", "1222 $", "3456 $", "324 $"]
    
    var limitArray4 : [String] = ["Limit", "23425 $", "65757 $", "12242 $", "34567 $", "3246 $"]
    
    var switchArray : [Int] = [0, 1, 2, 3, 4, 5]
    
    let cellReuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sensitiveTableView.delegate = self
        self.sensitiveTableView.dataSource = self
        
        self.sensetiveDataTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.sensitiveTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        if (Int(self.sensetiveDataTextField.text!)! >= 0 && Int(self.sensetiveDataTextField.text!)! <= 3452) {
            self.limitArray = self.limitArray1
        } else if (Int(self.sensetiveDataTextField.text!)! >= 3452 && Int(self.sensetiveDataTextField.text!)! <= 5000) {
            self.limitArray = self.limitArray2

        } else if (Int(self.sensetiveDataTextField.text!)! >= 5000 && Int(self.sensetiveDataTextField.text!)! <= 10000) {
            self.limitArray = self.limitArray3
        } else {
            self.limitArray = self.limitArray4
        }
        
        self.sensitiveTableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.coverageArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell:SensitiveDataTableViewCell = self.sensitiveTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! SensitiveDataTableViewCell
        if(self.switchArray[indexPath.row] == 0){
            cell.switchPart.isHidden = true
            cell.separatot1.isHidden = true
            cell.separator2.isHidden = true
            
        }else {
            cell.separatot1.isHidden = false
            cell.separator2.isHidden = false
        }
        
        
        cell.switchPart.tag = self.switchArray[indexPath.row]
        cell.label1.text = self.coverageArray[indexPath.row]
        cell.label2.text = self.limitArray[indexPath.row]
        
        if(cell.label1.text == "Coverage" || cell.label2.text == "Limit") {
            cell.label1.font = UIFont(name:"Avenir-Bold", size: 20.0)
            cell.label2.font = UIFont(name:"Avenir-Bold", size: 20.0)

        }

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77;
    }
    
}
