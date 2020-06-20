//
//  ViewController.swift
//  EggTimer
//
//  Created by Jorge Soto on 18/06/2020.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    var player:AVAudioPlayer!

    var total:Int = 60
    var secondsPassed:Int = 0

    let eggTimes:[String:Int] = ["Soft":300, "Medium":420,"Hard":720]
    var timer = Timer()


    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!

        progressBar.progress = 0.0;
        secondsPassed = 0;
        tittleLabel.text = hardness;
        timer.invalidate()

        total = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    func playSound() {
        let url = Bundle.main.url(forResource:"alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    @objc func updateTimer() {
        //example functionality
        if secondsPassed < total {
            secondsPassed += 1
            let percetangeProgress:Float = Float(secondsPassed)/Float(total)
            progressBar.progress = percetangeProgress
        }else{
            timer.invalidate()
            tittleLabel.text = "Done"
            playSound()
        }
    }
}

