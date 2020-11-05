//
//  UserQuestionViewModel.swift
//  Dozee
//
//  Created by Aditya Mishra on 31/10/20.
//

import Foundation

class UserQuestionViewModel: ObservableObject {
    @Published var question : String = ""
    @Published var greeting : String = ""
    @Published var answers : [String] = []
    
    init(with userQuestion: UserQuestion) {
        self.question = userQuestion.question
        self.greeting = userQuestion.greeting
        self.answers = userQuestion.answers
    }
    
    init(ques: String = "", greet: String = "", ans : [String] = []){
        self.question = ques
        self.greeting = greet
        self.answers = ans
    }
}
