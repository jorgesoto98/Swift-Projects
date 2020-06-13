//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jorge Soto on 6/15/18.
//  Copyright © 2018 Jorge Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Variables
    let BallArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBall : Int = -1
    
    //Funciones
    
    func randomGenerator(){
        randomBall = Int(arc4random_uniform(5))
    }
    
    //Image View
    @IBOutlet weak var ballImageView: UIImageView!
    
    //Botones
    @IBAction func askButton(_ sender: UIButton) {
        randomGenerator()
        ballImageView.image = UIImage(named: BallArray[randomBall])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

