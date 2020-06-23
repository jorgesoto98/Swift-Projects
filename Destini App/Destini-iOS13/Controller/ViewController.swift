//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Jorge Soto on 22/06/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    var choice:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if choice1Button.isTouchInside {
            choice = "choice1"
        }

        if choice2Button.isTouchInside{
            choice = "choice2"
        }
        storyBrain.nextStory(choice: choice)
        updateUI()
    }

    func updateUI(){
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getCh1(), for: .normal)
        choice2Button.setTitle(storyBrain.getCh2(), for: .normal)
    }
}

