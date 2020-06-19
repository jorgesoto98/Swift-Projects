//
//  ViewController.swift
//  Dicee
//
//  Created by Jorge Soto on 6/14/18.
//  Copyright © 2018 Jorge Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    //Image Views
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    //Made Functions
    func updateDiceImages(){
        
        //Random numer generator  *** Int(arc4random_uniform(6)) ***
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    //Motion Ended Function
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    //Buttons
    @IBAction func RollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    //General Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
