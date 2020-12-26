//
//  ViewController.swift
//  ByteCoin
//
//  Created by Matthew Gleich on 12/26/2020.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
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

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
}
