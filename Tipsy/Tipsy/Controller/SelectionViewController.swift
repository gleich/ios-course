//
//  ViewController.swift
//  Tipsy
//
//  Created by Matthew Gleich on 11/29/20.
//

import UIKit

class SelectionViewController: UIViewController {
    @IBOutlet var billTotalField: UITextField!
    @IBOutlet var lowestTipPercentButton: UIButton!
    @IBOutlet var middleTipPercentButton: UIButton!
    @IBOutlet var highestTipPercentButton: UIButton!
    @IBOutlet var splitLabel: UILabel!
    
    var tip = Tip()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func splitStepperChanged(_ sender: UIStepper) {
        splitLabel.text = String(format: "%.0f", sender.value)
    }

    @IBAction func zeroPercentPressed(_ sender: UIButton) {
        middleTipPercentButton.isSelected = false
        highestTipPercentButton.isSelected = false
        sender.isSelected = true
        tip.setPercent(selectedPercent: 0.0)
    }
    
    @IBAction func tenPercentPressed(_ sender: UIButton) {
        lowestTipPercentButton.isSelected = false
        highestTipPercentButton.isSelected = false
        sender.isSelected = true
        tip.setPercent(selectedPercent: 0.10)
    }
    
    @IBAction func twentyPercentPressed(_ sender: UIButton) {
        lowestTipPercentButton.isSelected = false
        middleTipPercentButton.isSelected = false
        sender.isSelected = true
        tip.setPercent(selectedPercent: 0.20)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        tip.calculateTotalPerPerson(
            billTotal: Int(billTotalField?.text ?? "0")!,
            selectedSplit: Int(splitLabel.text ?? "0")!
        )
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalPerPerson = tip.getTotalPerPerson()
            destinationVC.split = tip.getSplit()
            destinationVC.percentage = tip.getPercent()
        }
    }
}
