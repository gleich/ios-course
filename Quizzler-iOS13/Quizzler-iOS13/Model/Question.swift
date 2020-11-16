//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Matthew Gleich on 11/13/20.
//

import Foundation

struct Question {
    let question: String
    let options: Array<String>
    let correctAnswer: String
    
    init (q: String, o: Array<String>, c: String) {
        question = q
        options = o
        correctAnswer = c
    }
}
