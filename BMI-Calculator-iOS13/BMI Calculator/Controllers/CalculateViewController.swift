//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Matthew Gleich on 11/22/2020
//

import UIKit

class CalculateViewController: UIViewController {
    var calculator = CalculatorBrain()

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderUpdated(_ sender: UISlider) {
        heightLabel.text = String(format: "%.1fm", sender.value)
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fKg", sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        calculator.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculator.getBMI()
            destinationVC.advice = calculator.getAdvice()
            destinationVC.color = calculator.getColor()
        }
    }
}
