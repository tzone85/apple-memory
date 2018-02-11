//
//  ViewController.swift
//  Memory
//
//  Created by Thando Mini on 2018/02/11.
//  Copyright © 2018 Thando Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount: Int = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "👻", on: sender)
    }
    
    @IBAction func secondTouchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🎃", on: sender)
    }
    func flipCard(withEmoji emoji: String, on button: UIButton){
        
        print("flipCard(withEmoji \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
