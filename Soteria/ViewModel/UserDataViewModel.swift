//
//  UserDataViewModel.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import Foundation

class UserDataViewModel: ObservableObject {
    @Published var infoCardArray : [InfoCard]
    
    init() {
        self.infoCardArray = [InfoCard]()
    }
}

struct InfoCard {
    var title : String
    var description : String
    var value : Int
    var unit : String
    var icon : String
}
