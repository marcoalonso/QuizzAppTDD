//
//  QuizSubmission.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation

struct QuizSubmission {
    
    let quizId: Int
    private (set) var selectedChoices: [Int: Int] = [:]
    
    init(quizId: Int) {
        self.quizId = quizId
    }
    
    func isSelected(questionId: Int, choiceId: Int) -> Bool {
        
        if let persistedChoiceId = selectedChoices[questionId] {
            return choiceId == persistedChoiceId
        }
        
        return false
    }
    
    mutating func addChoice(questionId: Int, choiceId: Int) {
        self.selectedChoices[questionId] = choiceId
    }
}

