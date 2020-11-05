//
//  DescriptionLeaf.swift
//  Dozee
//
//  Created by Aditya Mishra on 02/11/20.
//

import SwiftUI

struct DescriptionLeaf: View {
    @Binding var infoDesc : InfoCard
    @Binding var showDesc : Bool
    var body: some View {
        ZStack {
            Color("AccentColor")
            VStack {
                VStack(alignment: .leading) {
                    Text(infoDesc.title)
                        .font(.title)
                    Spacer()
                        .frame(height: 20)
                    Text(infoDesc.description)
                    Spacer()
                        .frame(height: 20)
                }.padding()
                Button(action: {
                    showDesc.toggle()
                }){
                    Text("Done")
                        .padding()
                        .background(Color("ButtonYellow"))
                        .foregroundColor(Color("FontColor"))
                        .cornerRadius(16)
                        .font(.subheadline)
                        
                }
                Spacer()
            }
        }
    }
}
