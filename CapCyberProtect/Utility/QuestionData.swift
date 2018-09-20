//
//  QuestionData.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 12/09/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import Foundation
class QuestionData {
    
    static let instance = QuestionData()

    private let Questions = [
        Question(questionNumber: 1, questionCategory: "Enterprise Control", question: "Is data security responsibilities for each employee  documented?"),
        Question(questionNumber: 2, questionCategory: "Enterprise Control", question: "Do you have Business  security agreement with third parties who have access to your information?"),
        Question(questionNumber: 3, questionCategory: "IT Infrastructure security", question: "Does a process exist to identify new laws and regulations with IT security implications and provide advice on information security? (Example GDPR)"),
        Question(questionNumber: 4, questionCategory: "IT Infrastructure security", question: "Have your employees been provided with regular formal information security training?"),
        Question(questionNumber: 5, questionCategory: "End Point secutity", question: "Does your organization perform background checks to examine and assess an employee’s criminal history?"),
        Question(questionNumber: 6, questionCategory: "End Point secutity", question: "Does your organization perform background check on third party vendors?"),
        Question(questionNumber: 7, questionCategory: "Outsourcing", question: "Are your employees required to sign a non-disclosure agreement?"),
        Question(questionNumber: 8, questionCategory: "Outsourcing", question: "Do you have a formal process to manage the termination and or transfer of employees?"),
        Question(questionNumber: 9, questionCategory: "Security monitoring", question: "Are systems and networks that host, process and or transfer sensitive information ‘protected’ (isolated or separated) from other systems and or networks?"),
        Question(questionNumber: 10, questionCategory: "Security monitoring", question: "Q4Are systems and networks that host, process and or transfer sensitive information ‘protected’ (isolated or separated) from other systems and or networks?")
    ]
 
    func getQuestions() ->[Question] {
        return Questions
    }
}
