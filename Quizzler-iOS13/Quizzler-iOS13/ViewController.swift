//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Matthew Gleich on 11/10/2020
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let quiz = [
        Question(q: "Four + Two is equal to Six.", a: "True"),
        Question(q: "Five - Three is greater than One.", a: "True"),
        Question(q: "Three + Eight is less than Ten.", a: "False")
    ]
    var currentQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[currentQuestion].answer
         
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Incorrect.")
        }
        
        if currentQuestion >= quiz.count-1 {
            currentQuestion = 0
        } else {
            currentQuestion += 1
        }
        
        setQuestion()
    }

    func setQuestion() {
        questionLabel.text = quiz[currentQuestion].text
    }

}

