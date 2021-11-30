//
//  ViewController.swift
//  Quiz-App
//
//  Created by Nathaniel Spry on 11/18/21.
//

import UIKit

class ViewController: UIViewController {

// Outlets -> Variables | Actions -> Functions
    
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // Creating object to integrate Model and View Controller
    var quizlogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        updateUI() // Calling a function
    
    }
    
    @objc func updateUI() { //Create updateUI function
        
        questionsLabel.text = quizlogic.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizlogic.checkAnswer(userInput)
        
        if checkAnswer {
            
            sender.backgroundColor = UIColor.green
            
        } else {
            
            sender.backgroundColor = UIColor.red
            
        }
        
        quizlogic.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
    }
    
}
