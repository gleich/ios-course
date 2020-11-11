//
//  ViewController.swift
//  Xylophone
//
//  Created by Matthew Gleich 2020
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let sound = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: sound!)
        player.play()
    }
}

