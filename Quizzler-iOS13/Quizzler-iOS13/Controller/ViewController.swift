//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Matthew Gleich on 11/10/2020
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
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
        scoreLabel.text = "Score \(quiz.getScore())"
        
        // Setting options
        let options = quiz.getOptions()
        option1.setTitle(options[0], for: .normal)
        option2.setTitle(options[1], for: .normal)
        option3.setTitle(options[2], for: .normal)
        
        
        option1.backgroundColor = UIColor.clear
        option2.backgroundColor = UIColor.clear
        option3.backgroundColor = UIColor.clear
    }
    
}

