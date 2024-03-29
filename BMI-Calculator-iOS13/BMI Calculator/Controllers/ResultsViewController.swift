//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Matthew Gleich on 11/27/20.
//

import UIKit

class ResultsViewController: UIViewController {
    var bmiValue: String = "0.0"
    var advice: String = ""
    var color: UIColor = .black

    @IBOutlet var bmiValueLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
