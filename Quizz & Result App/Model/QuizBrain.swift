//
//  QuizBrain.swift
//  Quizz & Result App
//
//  Created by Akash Arafat on 2023/07/16.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Are strawberries sweet?", a: "False"),
        Question(q: "Is 10 minutes shorter than half an hour?", a: "True"),
        Question(q: "Are you friends with a cockroach?", a: "False"),
        Question(q: "Do you like to play in the rain?", a: "True"),
        Question(q: "Are you tired?", a: "False"),
        Question(q: "Are cows and cats animals that live in the jungle?", a: "False"),
        Question(q: "Do you get wet when you swim?", a: "True"),
        Question(q: "Are maple syrup and honey used to take a bath in?", a: "False"),
        Question(q: "Can you read a book?", a: "True"),
        Question(q: "Can you sing a song?", a: "True"),
        Question(q: "Do you like ice cream?", a: "True"),
        Question(q: "Does broccoli taste better than ice cream?", a: "False")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
