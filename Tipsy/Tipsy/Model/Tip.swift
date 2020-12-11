//
//  Tip.swift
//  Tipsy
//
//  Created by Matthew Gleich on 12/10/20.
//

import Foundation

struct Tip {
    var totalPerPerson: Double?
    var percent: Double?
    var split: Int?
    
    mutating func calculateTotalPerPerson(billTotal: Int, selectedSplit: Int) {
        split = selectedSplit
        totalPerPerson = (Double(billTotal) * percent!) / Double(split!)
    }
    
    mutating func setPercent(selectedPercent : Double) {
        percent = selectedPercent
    }
    
    func getTotalPerPerson() -> Double {
        return totalPerPerson!
    }
    
    func getSplit() -> Int {
        return split!
    }
}
