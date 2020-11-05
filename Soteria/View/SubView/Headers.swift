//
//  VitalHeader.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import SwiftUI

struct VitalHeader: View {
    var body: some View {
        HStack {
            Text("Vitals")
                .font(.title)
            Spacer()
            Button(action: {}){
                HStack {
                    Text("Share Reading")
                        .font(.custom("Nunito", size: 12))
                    Image(systemName: "paperplane")
                }
                .foregroundColor(Color("FontColor"))
            }
        }
        .padding([.leading, .trailing])
    }
}

struct SleepHeader: View {
    var body: some View {
        HStack() {
            Text("Sleep")
                .font(.title)
            Spacer()
        }
        .padding([.leading,.trailing])
    }
}
