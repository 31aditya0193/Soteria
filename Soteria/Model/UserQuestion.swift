//
//  UserQuestion.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import Foundation

struct UserQuestion: Codable {
    var question : String
    var greeting : String
    var answers : [String]
    
    enum CodingKeys: String, CodingKey {
        case question = "Question"
        case greeting = "Greeting"
        case answers = "Answers"
    }
}
