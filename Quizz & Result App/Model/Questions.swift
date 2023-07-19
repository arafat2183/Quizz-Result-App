//
//  Questions.swift
//  Quizz & Result App
//
//  Created by Akash Arafat on 2023/07/16.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
