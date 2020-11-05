//
//  File.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import Foundation

struct UserDetail: Codable {
    var name : String
    var phone : Phone
    var dateOfBirth : String
    
    enum CodingKeys : String,CodingKey {
        case name = "name"
        case phone = "phone"
        case dateOfBirth = "dob"
    }
}

struct Phone: Codable {
    var number : String
    var countryCode : String
    
    init(number: String = "", cc: String = ""){
        self.number = number
        self.countryCode = cc
    }
}
