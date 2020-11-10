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
        "Four + Two is equal to Six.",
        "Five - Three is greater than One.",
        "Three + Eight is less than Ten."
    ]
    var currentQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        currentQuestion += 1
        setQuestion()
    }
    
    func setQuestion() {
        questionLabel.text = quiz[currentQuestion]
    }

}

