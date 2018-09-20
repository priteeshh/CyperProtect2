//
//  QuestionValue.swift
//  CapCyberProtect
//
//  Created by Preeteesh Remalli on 12/09/18.
//  Copyright © 2018 Ranbijay SinghDeo. All rights reserved.
//

import Foundation
struct QuestionValue {
    
    private(set) public var questionNumber:Int
    private(set) public var questionCategory:String
    private(set) public var question:String
    public var questionValue:Float
    
    init(questionNumber:Int, questionCategory:String, question: String, questionValue: Float) {
        self.questionNumber = questionNumber
        self.questionCategory = questionCategory
        self.question = question
        self.questionValue = questionValue
    }
    
    
}
