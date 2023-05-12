//
//  NetworkServiceFactory.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation

class NetworkServiceFactory {
    
    static func create() -> NetworkService {
        
        let environment = ProcessInfo.processInfo.environment["ENV"]
        if let environment = environment {
            if environment == "TEST" {
                return Webservice()
            } else {
                return Webservice()
            }
        }
        
        return Webservice()
    }
 
}
