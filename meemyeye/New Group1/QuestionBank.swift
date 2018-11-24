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
        let item = Question(text: "เลข 74 ใช่หรือไม่", correctAnswer: true)
        list.append(item)
        list.append(Question(text: "เลข 29 ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text: "เลข 7 ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text: "เลข 12 ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text: "เลข 73 ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text: "เลข 3 ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text:"เลข 45 ใช่หรือไม่", correctAnswer: true))
    }
}
