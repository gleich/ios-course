//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Matthew Gleich on 12/26/2020.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    @IBOutlet var titleLabel: CLTypingLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡ FlashChat"
    }
}
