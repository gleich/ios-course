//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Matthew Gleich on 10/18/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func askButtonTapped(_ sender: UIButton) {
        let states = [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
        image.image = states.randomElement()
    }
    
}

