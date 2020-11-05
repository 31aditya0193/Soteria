//
//  Menu.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import SwiftUI

struct Menu: View {
    @State var periodIndex = 0
    @State var today = Date()
    @State var appManager : AppManager
    
    var viewPeriod = ["Daily", "Weekly", "Monthly"]
    var body: some View {
        Picker("", selection: $periodIndex){
            ForEach(0..<viewPeriod.count){ index in
                Text(self.viewPeriod[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .onChange(of: periodIndex, perform: { value in
            appManager.assortData(selectionType: value)
        })
        .onAppear(perform: {
            appManager.assortData(selectionType: 0)
        })
        .padding()
        .frame(height: 50)
        .background(Color("BannerColor"))
    }
}

