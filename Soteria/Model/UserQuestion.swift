//
//  UserQuestion.swift
//  Dozee
//
//  Created by Aditya Mishra on 31/10/20.
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
