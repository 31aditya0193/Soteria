//
//  Data.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import Foundation

enum UrlString : String {
    case baseURL = "https://f2a8b123-adbb-4c6a-beba-f3d3d42eea86.mock.pstmn.io"
    case details = "/api/user/details/"
    case data = "/api/user/data/"
    case question = "/api/user/question/"
}

enum CardType : Int, CaseIterable {
    case heart = 0
    case respiration = 1
    case bOxygen = 2
    case bPressure = 3
    case sScore = 4
    case rec = 5
}

var descriptions = [ "The heart rate is one of the ‘vital signs’ or the important indicators of health in the human body. It measures the number of times that the heart contracts or beats per minute . The speed of the heartbeat varies as a result of physical activity, threats to safety, and emotional responses. The resting heart rate refers to the heart rate when person is at rest.",
                     "The Respiration Rate is another ‘Vital Sign’ which is one of the most important indicators of health in the human body. Respiration rate is reported in respirations (breaths) per minute. Each respiration has two phases: Inhalation and exhalation. During inhalation, oxygen is brought into the lungs from where it is transported throughout the body via the bloodstream. During exhalation, carbon dioxide is eliminated.",
                     "Oxygen saturation refers to the extent to which hemoglobin is saturated with oxygen. Hemoglobin is an element in your blood that binds with oxygen to carry it through the bloodstream to the organs, tissues, and cells of your body. It is an important parameter for managing patients in a clinical setup.",
                     "Blood pressure (BP) is the pressure of circulating blood against the walls of blood vessels. Most of this pressure results from the heart pumping blood through the circulatory system. When used without qualification, the term \"blood pressure\" refers to the pressure in the large arteries. Blood pressure is usually expressed in terms of the systolic pressure (maximum pressure during one heartbeat) over diastolic pressure(minimum pressure between two heartbeats) in the cardiac cycle. It is measured in millimeters of mercury (mmHg) above the surrounding atmospheric pressure.",
                     "Sleep is a complex process of the body. Contrary to the popular belief that the brain and body shut down during sleep, both go through several processes to ensure adequate recovery — from burning calories to clearing neurotoxins and more. Most healthy adults need 7-9 hours of sleep as per NIH, USA. Soteria’s sleep score quantifies the efficacy of your sleep by measuring several parameters related to your sleep including body vitals, sleep routine, composition of sleep, and restfulness among others.",
                     "Stress is the body's response to anything that moves it away from being ‘Normal’ or ‘Healthy’. Stress hence is much more than the mental stress how we perceive it. It can be physical, hormonal, digestive, environmental, and mental. Recovery Score enables you to track the effectiveness of your sleep to help you recover from the stress that you accumulate during the day. High recovery levels are excellent indicators of good health."
                    ]

var baseData = [ InfoCard(title: "Health Rate", description: descriptions[CardType.heart.rawValue], value: 0, unit: "BPM", icon: "heart.circle"),
                 InfoCard(title: "Respiration Rate", description: descriptions[CardType.respiration.rawValue], value: 0, unit: "BPM", icon: "wind"),
                 InfoCard(title: "Blood Oxygen", description: descriptions[CardType.bOxygen.rawValue], value: 0, unit: "%", icon: "bolt.heart"),
                 InfoCard(title: "Blood Pressure", description: descriptions[CardType.bPressure.rawValue], value: 0, unit: "mmHg", icon: "waveform.path.ecg"),
                 InfoCard(title: "Sleep Score", description: descriptions[CardType.sScore.rawValue], value: 0, unit: "/ 100", icon: "powersleep"),
                 InfoCard(title: "Recovery", description: descriptions[CardType.rec.rawValue], value: 0, unit: "%", icon: "bandage")
                ]
