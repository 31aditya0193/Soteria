//
//  UserData.swift
//  Dozee
//
//  Created by Aditya Mishra on 31/10/20.
//

import Foundation

struct UserData: Codable {
    var heartRate : Int?
    var breathRate : Int?
    var O2 : Int?
    var bloodPressure : BloodPressure?
    var recovery : Int?
    var sleepScore : Int?
    var time : Int?
    
    enum CodingKeys: String, CodingKey {
        case heartRate = "HeartRate"
        case breathRate = "BreathRate"
        case O2 = "O2"
        case bloodPressure = "Blood Pressure"
        case recovery = "Recovery"
        case sleepScore = "sleepscore"
        case time = "time"
    }
}

struct BloodPressure: Codable {
    var systole : Int?
    var diastole : Int?
    
    enum CodingKeys: String, CodingKey {
        case systole = "Systole"
        case diastole = "Diastole"
    }
}
