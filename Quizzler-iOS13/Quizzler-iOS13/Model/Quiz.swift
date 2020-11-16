//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Matthew Gleich on 11/15/20.
//

import Foundation

struct Quiz {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", o: ["Heart", "Skin", "Large Intestine"], c: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", o: ["25", "50", "100"], c: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", o: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], c: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", o: ["Chapeau", "Écharpe", "Bonnet"], c: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", o: ["Notebook", "Handkerchief", "Watch"], c: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", o: ["Au Revoir", "Adiós", "Salir"], c: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", o: ["Green", "Orange", "Blue"], c: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", o: ["Rum", "Whisky", "Gin"], c: "Rum"),
        Question(q: "What type of animal was Harambe?", o: ["Panda", "Gorilla", "Crocodile"], c: "Gorilla"),
        Question(q: "Where is Tasmania located?", o: ["Indonesia", "Australia", "Scotland"], c: "Australia")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnwser(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        }
        return false
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getOptions() -> Array<String> {
        return quiz[questionNumber].options
    }
    
    mutating func nextQuestion() {
        if questionNumber >= quiz.count - 1 {
            questionNumber = 0
            score = 0
        } else {
            questionNumber += 1
        }
    }
}
