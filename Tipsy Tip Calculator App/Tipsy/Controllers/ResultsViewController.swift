//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jorge Soto on 27/06/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!

    var total: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(total!)
    }


    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
