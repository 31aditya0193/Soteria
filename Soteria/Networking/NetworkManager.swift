//
//  NetworkManager.swift
//  Dozee
//
//  Created by Aditya Mishra on 31/10/20.
//

import Foundation

extension AppManager {
    func getDataFromServer(for callTye: UrlString) {
        let address = UrlString.baseURL.rawValue + callTye.self.rawValue
        guard let userDetailURL = URL(string: address) else {
            fatalError("Bad data URL!")
        }
        
        DispatchQueue.global().async {
            URLSession.shared.dataTask(with : userDetailURL) { [self] (data, response, error) in
                guard let data = data, error == nil else {
                    print("Error fetching data")
                    return
                }
            
                do {
                    let jsonDecoder = JSONDecoder()
                    var safeUserDetail : UserDetail?
                    var safeUserData : [UserData]?
                    var safeUserQuestion : UserQuestion?
                    
                    switch callTye {
                        case .details:
                            safeUserDetail = try jsonDecoder.decode(UserDetail.self, from : data)
                            DispatchQueue.main.sync {
                                userDetailVM = safeUserDetail.map { UserDetailViewModel(with: $0) }!
                            }
                        case .data:
                            safeUserData = try jsonDecoder.decode([UserData].self, from : data)
                            DispatchQueue.main.sync {
                                userDataArray = safeUserData!
                            }
                        case .question:
                            safeUserQuestion = try jsonDecoder.decode(UserQuestion.self, from : data)
                            DispatchQueue.main.sync {
                                userQuestionVM = safeUserQuestion.map{ UserQuestionViewModel(with: $0) }!
                            }
                        case .baseURL:
                            print("URL Not Complete")
                    }
                } catch {
                    print(error)
                }
            }.resume()
        }
    }
}
