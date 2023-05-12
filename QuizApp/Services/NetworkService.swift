//
//  NetworkService.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation

protocol NetworkService {
    func getAllQuizes(url: URL, completion: @escaping (Result<[QuizDTO], NetworkError>) -> Void)
    func getQuizById(url: URL, completion: @escaping (Result<QuizDTO, NetworkError>) -> Void)
}
