//
//  Dashboard.swift
//  Dozee
//
//  Created by Aditya Mishra on 30/10/20.
//

import SwiftUI

struct Dashboard: View {
    @ObservedObject var appManager : AppManager = AppManager()
    
    var body: some View {
        VStack {
            ScrollView {
                Banner(username: $appManager.userDetailVM.name)
                Menu(periodIndex: 0, appManager: appManager)
                VitalHeader()
                VitalBlocks(userData: $appManager.InfoCards)
                SleepHeader()
                SleepBlocks(userData: $appManager.InfoCards)
            }
        }.onAppear(perform: {
            appManager.dataInit()
        })
    }
}
