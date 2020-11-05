//
//  UserDetailViewModel.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import Foundation

class UserDetailViewModel: ObservableObject  {
    @Published var name: String
    var phone: Phone
    var dateOfBirth: String
    
    init(with userDetail: UserDetail) {
        self.name = userDetail.name
        self.phone = userDetail.phone
        self.dateOfBirth = userDetail.dateOfBirth
    }
    
    init(name: String = "", phone: Phone = Phone(), dob: String = ""){
        self.name = name
        self.phone = phone
        self.dateOfBirth = dob
    }
    
}
