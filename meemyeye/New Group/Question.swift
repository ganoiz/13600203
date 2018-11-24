//
//  Question.swift
//  meemyeye
//
//  Created by ict on 9/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation
class Question {
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) { //มีหน้าที่เซตค่าเริ่มต้นให้กับตัวแปรที่อยู่ในคลาส
        questionText = text
        answer = correctAnswer
    }
}
