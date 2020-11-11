//
//  ViewController.swift
//  EggTimer
//
//  Created by Matthew Gleich 2020
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    let eggTimes: [String: Int] = [
        "Soft": 4,
        "Medium": 7,
        "Hard": 12,
    ]
    var secondsPassed = 0
    var totalMinutes = 0
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        totalMinutes = eggTimes[sender.currentTitle!]! * 60

        timer.invalidate()
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true
        )
    }

    @objc func updateTimer() {
        if secondsPassed < totalMinutes {
            let progress = Float(secondsPassed) / Float(totalMinutes)
            progressBar.progress = progress
            print(progress)
            secondsPassed += 1
        } else {
            timer.invalidate()
            topTitle.text = "Done!"
        }
    }

}
