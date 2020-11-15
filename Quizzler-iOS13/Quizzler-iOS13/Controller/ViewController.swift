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
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quiz.checkAnwser(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quiz.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(setQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func setQuestion() {
        questionLabel.text = quiz.getQuestionText()
        progressBar.progress = quiz.getProgress()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}

