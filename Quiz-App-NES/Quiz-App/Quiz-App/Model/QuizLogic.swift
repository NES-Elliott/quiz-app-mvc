//
//  QuizLogic.swift
//  Quiz-App
//
//  Created by Nathaniel Spry on 11/30/21.
//

import Foundation

struct QuizLogic {
    
    // 1D Array -> Structures as a data-type
    var questionBank = [
        
        Questions(text: "5 + 2 = 9", answer: "False"),
        Questions(text: "7 - 4 = 3", answer: "True"),
        Questions(text: "3 + 3 = 6", answer: "True"),
        Questions(text: "8 - 4 = 5", answer: "False"),
        Questions(text: "4 + 0 = 4", answer: "True")
        
    ]
    
    var questionNumber = 0
    
    // Create function for displaying question text
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
    }
    
    func checkAnswer(_ userInput: String) -> Bool {
        
        if userInput == questionBank[questionNumber].answer {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < questionBank.count {
            
            questionNumber += 1
            
        } else {
            
            questionNumber = 0
            
        }
        
    }
    
}
