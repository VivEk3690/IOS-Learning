//
//  QuestionProvider.swift
//  Quizzler-iOS13
//
//  Created by Vivek Patel on 2023-05-30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionProvider {
    
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], rightAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], rightAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], rightAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], rightAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], rightAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], rightAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], rightAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], rightAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], rightAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], rightAnswer: "Australia")

    ]
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ answer: String) -> Bool {
        if answer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getQuestion() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getProgress() -> Float {        
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
