//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onKeyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(key: sender.currentTitle)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        
    }
    
    
    func playSound(key: String!) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

