//
//  QuestionsVC.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 03/07/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import UIKit

class QuestionsVC: UIViewController {
    @IBOutlet weak var questionOneView: BorderView!
    
    @IBOutlet weak var questionTwoView: BorderView!
    @IBOutlet weak var questionThreeView: BorderView!
    @IBOutlet weak var questionFourView: BorderView!
    @IBOutlet weak var segment1: UISegmentedControl!
    @IBOutlet weak var segment2: UISegmentedControl!
    @IBOutlet weak var segment3: UISegmentedControl!
    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var nextView: UIView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressPercentageLbl: UILabel!
    var percentage = 0
    var questionSet = 1
    var sumfinal : Float = 0.0
    var questionValueArray : [QuestionValue] = []

    override func viewDidLoad() {
        populateQuestion()
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.back(sender:)))
        self.navigationItem.leftBarButtonItem = newBackButton
        setProgressValue()
        for questionItem in QuestionData.instance.getQuestions(){
            questionValueArray.append(QuestionValue(questionNumber: questionItem.questionNumber, questionCategory: questionItem.questionCategory, question: questionItem.question, questionValue: 0.0))
        }
        super.viewDidLoad()
        
    }
 
    @IBAction func segment1ValueChanged(_ sender: UISegmentedControl) {
        let height = self.questionTwoView.frame.size.height
        let width = self.questionTwoView.frame.size.width
        let y = self.questionTwoView.frame.origin.y
        UIView.animate(withDuration: 0.5, animations: {
            self.questionTwoView.frame = CGRect(x :0,y : y,width: width,height: height)
        })
        switch sender.selectedSegmentIndex {
        case 0:
            if questionSet == 1 {
               questionValueArray[0].questionValue = 1.0
            }
            else if questionSet == 2 {
                questionValueArray[3].questionValue = 1.0
            }
            else if questionSet == 3 {
                questionValueArray[6].questionValue = 1.0
            }
        case 1:
            if questionSet == 1 {
                questionValueArray[0].questionValue = 0.5
            }
            else if questionSet == 2 {
                questionValueArray[3].questionValue = 0.5
            }
            else if questionSet == 3 {
                questionValueArray[6].questionValue = 0.5
            }
        case 2:
            if questionSet == 1 {
                questionValueArray[0].questionValue = 0.0
            }
            else if questionSet == 2 {
                questionValueArray[3].questionValue = 0.0
            }
            else if questionSet == 3 {
                questionValueArray[6].questionValue = 0.0
            }
        default:
            return
        }
       setProgressValue()
    }
    @IBAction func segment2ValueChanged(_ sender: UISegmentedControl) {
        let height = self.questionThreeView.frame.size.height
        let width = self.questionThreeView.frame.size.width
        let y = self.questionThreeView.frame.origin.y
        UIView.animate(withDuration: 1, animations: {
            self.questionThreeView.frame = CGRect(x :0,y : y,width: width,height: height)
        })
        switch sender.selectedSegmentIndex {
        case 0:
            if questionSet == 1 {
                questionValueArray[1].questionValue = 1.0
            }
            else if questionSet == 2 {
                questionValueArray[4].questionValue = 1.0
            }
            else if questionSet == 3 {
                questionValueArray[7].questionValue = 1.0
            }
        case 1:
            if questionSet == 1 {
                questionValueArray[1].questionValue = 0.5
            }
            else if questionSet == 2 {
                questionValueArray[4].questionValue = 0.5
            }
            else if questionSet == 3 {
                questionValueArray[7].questionValue = 0.5
            }
        case 2:
            if questionSet == 1 {
                questionValueArray[1].questionValue = 0.0
            }
            else if questionSet == 2 {
                questionValueArray[4].questionValue = 0.0
            }
            else if questionSet == 3 {
                questionValueArray[7].questionValue = 0.0
            }
        default:
            return
        }
        setProgressValue()
    }
    
    @IBAction func segment3ValueChanged(_ sender: UISegmentedControl) {
        if questionSet == 3 {
            let height = self.questionFourView.frame.size.height
            let width = self.questionFourView.frame.size.width
            let y = self.questionFourView.frame.origin.y
            UIView.animate(withDuration: 1, animations: {
                self.questionFourView.frame = CGRect(x :0,y : y,width: width,height: height)
            })
        }
        
        
        if questionSet != 3 {
            UIView.animate(withDuration: 0.5, animations: {
                self.nextBtn.isHidden = false
            })
        }
        
        switch sender.selectedSegmentIndex {
        case 0:
            if questionSet == 1 {
                questionValueArray[2].questionValue = 1.0
            }
            else if questionSet == 2 {
                questionValueArray[5].questionValue = 1.0
            }
            else if questionSet == 3 {
                questionValueArray[8].questionValue = 1.0
            }
        case 1:
            if questionSet == 1 {
                questionValueArray[2].questionValue = 0.5
            }
            else if questionSet == 2 {
                questionValueArray[5].questionValue = 0.5
            }
            else if questionSet == 3 {
                questionValueArray[8].questionValue = 0.5
            }
        case 2:
            if questionSet == 1 {
                questionValueArray[2].questionValue = 0.0
            }
            else if questionSet == 2 {
                questionValueArray[5].questionValue = 0.0
            }
            else if questionSet == 3 {
                questionValueArray[8].questionValue = 0.0
            }
        default:
            return
        }
        setProgressValue()
    }
    @IBAction func segment4ValueChanged(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 0.5, animations: {
            self.nextBtn.isHidden = false
        })
        switch sender.selectedSegmentIndex {
        case 0:
            if questionSet == 3 {
                questionValueArray[9].questionValue = 1.0
            }
        case 1:
             if questionSet == 3 {
                questionValueArray[9].questionValue = 0.5
            }
        case 2:
             if questionSet == 3 {
                questionValueArray[9].questionValue = 0.0
            }
        default:
            return
        }
        setProgressValue()
    }
    @IBAction func nextBtnTapped(_ sender: Any) {
        
        if questionSet != 3{
        self.nextBtn.isHidden = true
        let height = self.questionTwoView.frame.size.height
        let width = self.questionTwoView.frame.size.width
        let y = self.questionTwoView.frame.origin.y
        self.questionTwoView.frame = CGRect(x :1500,y : y,width: width,height: height)
        let height1 = self.questionThreeView.frame.size.height
        let width1 = self.questionThreeView.frame.size.width
        let y1 = self.questionThreeView.frame.origin.y
        self.questionThreeView.frame = CGRect(x :1500,y : y1,width: width1,height: height1)
            segment1.selectedSegmentIndex = UISegmentedControlNoSegment
            segment2.selectedSegmentIndex = UISegmentedControlNoSegment
            segment3.selectedSegmentIndex = UISegmentedControlNoSegment
        }
        if questionSet == 1{
            questionSet = 2
        }
        else if questionSet == 2{
            questionSet = 3
        }
        else if questionSet == 3{
            performSegue(withIdentifier: "overAllProgressVC", sender: self)
        }
        populateQuestion()

    }
    @objc func back(sender: UIBarButtonItem) {

            let height = self.questionFourView.frame.size.height
            let width = self.questionFourView.frame.size.width
            let y = self.questionFourView.frame.origin.y
            self.questionFourView.frame = CGRect(x :1500,y : y,width: width,height: height)

        if questionSet == 1{
            self.navigationController?.popViewController(animated: true)
        }
        else if questionSet == 2{
            populateQuestion()
            switch questionValueArray[0].questionValue {
            case 1.0:
                segment1.selectedSegmentIndex = 0
            case 0.5:
                segment1.selectedSegmentIndex = 1
            case 0.0:
                segment1.selectedSegmentIndex = 2
            default:
                return
            }
            switch questionValueArray[1].questionValue {
            case 1.0:
                segment2.selectedSegmentIndex = 0
            case 0.5:
                segment2.selectedSegmentIndex = 1
            case 0.0:
                segment2.selectedSegmentIndex = 2
            default:
                return
            }
            switch questionValueArray[2].questionValue {
            case 1.0:
                segment3.selectedSegmentIndex = 0
            case 0.5:
                segment3.selectedSegmentIndex = 1
            case 0.0:
                segment3.selectedSegmentIndex = 2
            default:
                return
            }
            questionSet = 1
        }
        else if questionSet == 3{
            populateQuestion()
            switch questionValueArray[3].questionValue {
            case 1.0:
                segment1.selectedSegmentIndex = 0
            case 0.5:
                segment1.selectedSegmentIndex = 1
            case 0.0:
                segment1.selectedSegmentIndex = 2
            default:
                return
            }
            switch questionValueArray[4].questionValue {
            case 1.0:
                segment2.selectedSegmentIndex = 0
            case 0.5:
                segment2.selectedSegmentIndex = 1
            case 0.0:
                segment2.selectedSegmentIndex = 2
            default:
                return
            }
            switch questionValueArray[5].questionValue {
            case 1.0:
                segment3.selectedSegmentIndex = 0
            case 0.5:
                segment3.selectedSegmentIndex = 1
            case 0.0:
                segment3.selectedSegmentIndex = 2
            default:
                return
            }
            questionSet = 2

        }
    }
    func populateQuestion(){
        print(questionSet)
        
        if questionSet == 1{
            self.question1.text = QuestionData.instance.getQuestions()[0].question
            self.question2.text = QuestionData.instance.getQuestions()[1].question
            self.question3.text = QuestionData.instance.getQuestions()[2].question
        }
        else if questionSet == 2{
            self.question1.text = QuestionData.instance.getQuestions()[3].question
            self.question2.text = QuestionData.instance.getQuestions()[4].question
            self.question3.text = QuestionData.instance.getQuestions()[5].question
        }
        else if questionSet == 3{
            self.question1.text = QuestionData.instance.getQuestions()[6].question
            self.question2.text = QuestionData.instance.getQuestions()[7].question
            self.question3.text = QuestionData.instance.getQuestions()[8].question
            self.question4.text = QuestionData.instance.getQuestions()[9].question
        }

    }
    func setProgressValue(){
        var sum : Float = 0.0
        for valueItem in questionValueArray{
            sum = sum + valueItem.questionValue
        }
      sumfinal = Float((sum)/10.0)
      self.progressView.setProgress(sumfinal, animated: true)
      self.progressPercentageLbl.text = "\(sumfinal*100)%"
        categoeryProgressValue()
    }
    func categoeryProgressValue(){
     var EnterpriseControlValueSum : Float = 0.0
     var ITInfrastructureSecuritySum : Float = 0.0
     var EndPointSecutitySum : Float = 0.0
     var OutsourcingSum : Float = 0.0
     var SecurityMonitoring : Float = 0.0
        var EnterpriseControlValuefinalValue : Float = 0.0
        var ITInfrastructureSecurityfinalValue: Float = 0.0
        var EndPointSecutitySumfinalValue: Float = 0.0
        var OutsourcingSumfinalValue: Float = 0.0
        var SecurityMonitoringfinalValue: Float = 0.0
        
        for ControlValueItem in questionValueArray{
            if ControlValueItem.questionCategory == "Enterprise Control"{
                EnterpriseControlValueSum = EnterpriseControlValueSum + ControlValueItem.questionValue
                 EnterpriseControlValuefinalValue = Float((EnterpriseControlValueSum)/2.0)*100
            }
            else if ControlValueItem.questionCategory == "IT Infrastructure security"{
                ITInfrastructureSecuritySum = ITInfrastructureSecuritySum + ControlValueItem.questionValue
                 ITInfrastructureSecurityfinalValue = Float((ITInfrastructureSecuritySum)/2.0)*100

            }
            else if ControlValueItem.questionCategory == "End Point secutity"{
                EndPointSecutitySum = EndPointSecutitySum + ControlValueItem.questionValue
                 EndPointSecutitySumfinalValue = Float((EndPointSecutitySum)/2.0)*100
            }
            else if ControlValueItem.questionCategory == "Outsourcing"{
                OutsourcingSum = OutsourcingSum + ControlValueItem.questionValue
                 OutsourcingSumfinalValue = Float((OutsourcingSum)/2.0)*100
            }
            else if ControlValueItem.questionCategory == "Security monitoring"{
                SecurityMonitoring = SecurityMonitoring + ControlValueItem.questionValue
                 SecurityMonitoringfinalValue = Float((SecurityMonitoring)/2.0)*100
            }
        }
        let categoeryArray = [EnterpriseControlValuefinalValue,ITInfrastructureSecurityfinalValue,EndPointSecutitySumfinalValue,OutsourcingSumfinalValue,SecurityMonitoringfinalValue]
        UserDefaults.standard.set(categoeryArray, forKey: "categoryValues")
    }
    

     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "overAllProgressVC" {
            if let destination = segue.destination as? OverallScoreViewController {
                destination.progressPercentage = sumfinal*100
            }
        }
        
     }

}
