//
//  Constants.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation

struct Constants {
    
    static let baseURL = URL(string: "https://warp-wiry-rugby.glitch.me")!
    
    struct Urls {
        
        static let allQuizes = baseURL.appendingPathComponent("/all-quizes")
        static func quizById(_ quizId: Int) -> URL {
            return baseURL.appendingPathComponent("/quizes/\(quizId)")
        }
    }
    
    struct Messages {
        static let quizSubmissonFailed = "Unable to submit quiz. Please answer all questions."
    }
}
