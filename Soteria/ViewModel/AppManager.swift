//
//  AppManager.swift
//  Dozee
//
//  Created by Aditya Mishra on 01/11/20.
//

import Foundation

class AppManager: ObservableObject {
    @Published var userDetailVM : UserDetailViewModel
    @Published var InfoCards : [InfoCard]
    @Published var userQuestionVM : UserQuestionViewModel
    
    var userDataArray : [UserData]
    
    init() {
        userDetailVM = UserDetailViewModel()
        InfoCards =  baseData
        userQuestionVM = UserQuestionViewModel()
        userDataArray = [UserData]()
        dataInit()
    }
    
    func dataInit() {
        getDataFromServer(for: .details)
        getDataFromServer(for: .data)
        getDataFromServer(for: .question)
    }
    
    func assortData(selectionType: Int) {
        switch selectionType {
            case 0:
                randomizer()
            case 1:
                randomizer()
            case 2:
                randomizer()
            default:
                print("Default Case")
        }
    }
    
    func randomizer() {
        for x in CardType.allCases {
            InfoCards[x.rawValue].value = Int.random(in: 20...100)
        }
    }
}
