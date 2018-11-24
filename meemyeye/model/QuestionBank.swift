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
        let item = Question(image: "กานอยสวยใช่ไหม", correctAnswer: true)
        
        list.append(item)
        //index 1
        list.append(Question(text: "กานอยทำเว็บเสร็จยัง", correctAnswer: false))
        //index 2
        list.append(Question(text: "กานอยอยากมีเงินเยอะๆใช่ไหม", correctAnswer: true))
        //index 3
        list.append(Question(text: "วันนี้กานอยอาบน้ำยัง", correctAnswer: true))
        //index 4
        list.append(Question(text: "วันนี้กานอยขี้เกียจ", correctAnswer: false))
    }
}
