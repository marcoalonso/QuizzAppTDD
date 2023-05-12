//
//  GradeViewModel.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation

class QuizGradeViewModel: ObservableObject {
    
    var networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func submitQuiz(submission: QuizSubmission) {
        
        networkService.getQuizById(url: Constants.Urls.quizById(submission.quizId)) { result in
            switch result {
                case .success(let quizDTO):
                    print(quizDTO)
                case .failure(let error):
                    print(error)
            }
        }
    }
    
}


