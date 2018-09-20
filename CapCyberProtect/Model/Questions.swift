//
//  Questions.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 12/09/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import Foundation
struct Question {
    
    private(set) public var questionNumber:Int
    private(set) public var questionCategory:String
    private(set) public var question:String
    
    init(questionNumber:Int, questionCategory:String, question: String) {
        self.questionNumber = questionNumber
        self.questionCategory = questionCategory
        self.question = question
    }
    
    
}
