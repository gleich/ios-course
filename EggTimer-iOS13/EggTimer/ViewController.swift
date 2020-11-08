//
//  ViewController.swift
//  EggTimer
//
//  Created by Matthew Gleich 2020
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topTitle: UILabel!
    
    let eggTimes : [String: Int] = [
        "Soft":   1,
        "Medium": 7,
        "Hard":   12,
    ]
    var secondsRemaining = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let minutes = eggTimes[sender.currentTitle!]!
        secondsRemaining = minutes * 60
        
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            topTitle.text = "Done!"
        }
    }
 
}
