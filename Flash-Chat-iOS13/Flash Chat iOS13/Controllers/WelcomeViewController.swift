//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Matthew Gleich on 12/26/2020.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "⚡ FlashChat"
        for char in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) {
                (timer) in self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
}
