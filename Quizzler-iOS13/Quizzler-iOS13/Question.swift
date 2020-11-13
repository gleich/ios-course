//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Matthew Gleich on 11/13/20.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init (q: String, a: String) {
        text = q
        answer = a
    }
}
