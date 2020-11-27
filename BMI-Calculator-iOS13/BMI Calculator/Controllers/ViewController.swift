//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Matthew Gleich on 11/22/2020
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderUpdated(_ sender: UISlider) {
        heightLabel.text = String(format: "%.1fm", sender.value)
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fKg", sender.value)
    }
}
