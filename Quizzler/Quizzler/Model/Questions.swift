//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Vivek Patel on 2023-05-30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    
    let text : String
    let answer : [String]
    let rightAnswer: String
    
    init(q: String, a: [String], rightAnswer: String) {
        self.text = q
        self.answer = a
        self.rightAnswer = rightAnswer
    }
}

