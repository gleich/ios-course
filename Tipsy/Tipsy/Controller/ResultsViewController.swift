//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Matthew Gleich on 12/7/20.
//

import UIKit

class ResultsViewController: UIViewController {
    var totalPerPerson: Double = 0.0
    var split: Int = 0
    var percentage: Int = 0
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPersonLabel.text = String(format: "%.2f", totalPerPerson)
        messageLabel.text = "Split between \(split) people, with \(percentage)% tip"
    }
}
