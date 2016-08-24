//
//  ViewController.swift
//  GuessGame
//
//  Created by Felicia Weathers on 7/28/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessingTextField: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func guessButtonTapped(sender: UIButton) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == guessingTextField.text {
            
            resultsLabel.text = "Yay! You guessed correct!"
       
        } else {
            
            resultsLabel.text = "Wrong! It was a "  + diceRoll
        }
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

