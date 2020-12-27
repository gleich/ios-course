//
//  ViewController.swift
//  ByteCoin
//
//  Created by Matthew Gleich on 12/26/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var currencyLabel: UILabel!
    @IBOutlet var bitCoinLabel: UILabel!
    @IBOutlet var currencyPicker: UIPickerView!

    let coinManager = CoinManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        currencyPicker.delegate = self
        currencyPicker.dataSource = self
    }
}

// MARK: - UIPickerViewDataSource

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
}
