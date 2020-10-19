//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Matthew Gleich on 10/18/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var buttonText: UIButton!
    
    var firstRun = true
    let ballStates = [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    @IBAction func askButtonTapped(_ sender: UIButton) {
        // Changing image
        image.image = ballStates.randomElement()
        
        // Changing text if first run
        if firstRun {
            buttonText.setTitle("Ask Again", for: .normal)
            firstRun = false
        }
    }
    
}

