//
//  QuestionBank.swift
//  meemyeye
//
//  Created by ict on 9/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//


import Foundation
class QuestionBank {
    
    var list = [Question] ()
    
    init() {
        //index 0
        let item = Question(text: "เลข 74 ใช่หรือไม่", correctAnswer: true)
        
        list.append(item)
        //index 1
        list.append(Question(text: "เลข 29 ใช่หรือไม่", correctAnswer: false))
        //index 2
        list.append(Question(text: "เลข 7 ใช่หรือไม่", correctAnswer: true))
        //index 3
        list.append(Question(text: "เลข 12 ใช่หรือไม่", correctAnswer: true))
        //index 4
        list.append(Question(text:"เลข 73 ใช่หรือไม่", correctAnswer: false))
    }
}
