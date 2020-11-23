//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Matthew Gleich on 11/22/2020
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    
    var story = Story()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCurrentQuestion()
    }

    @IBAction func optionOne(_ sender: UIButton) {
        story.changeStep(choice: sender.currentTitle!)
        setCurrentQuestion()
    }
    
    @IBAction func optionTwo(_ sender: UIButton) {
        story.changeStep(choice: sender.currentTitle!)
        setCurrentQuestion()
    }
    
    
    func setCurrentQuestion() {
        let step = story.getStep()
        questionLabel.text = step.title
        option1Button.setTitle(step.choice1, for: .normal)
        option2Button.setTitle(step.choice2, for: .normal)
    }
}
