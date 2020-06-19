//
//  ViewController.swift
//  Xylophone
//
//  Created by Jorge Soto on 18/06/2020.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(key:(sender.titleLabel?.text)!)
        sender.alpha /= 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            sender.alpha *= 2
        })
    }

    func playSound(key:String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}



