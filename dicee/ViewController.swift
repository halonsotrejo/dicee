//
//  ViewController.swift
//  dicee
//
//  Created by Hector Trejo on 2/6/19.
//  Copyright © 2019 Annix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
    }
    
    func updateDiceImage(){
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: imageArray[randomDiceIndex1])
        
        
        diceImageView2.image = UIImage(named: imageArray[randomDiceIndex2])
    }
    

}

