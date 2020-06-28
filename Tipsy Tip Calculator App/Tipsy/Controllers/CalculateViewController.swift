//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CaclculateViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!

    var tip = 0.10
    var persons = 2
    var billTotal = 0.00

    @IBAction func percentagePressed(_ sender: UIButton) {
        billTextField.endEditing(true)

        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        sender.isSelected = true

        tip = Double(sender.accessibilityLabel!)!
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
        persons = Int(splitLabel.text!)!
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!

        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(persons)
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            billTotal = Double(resultTo2DecimalPlaces)!
            print(resultTo2DecimalPlaces)
        }

        print(tip)
        print(persons)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.total = billTotal
        }
    }

}

