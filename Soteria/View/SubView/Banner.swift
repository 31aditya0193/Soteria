//
//  Banner.swift
//  Dozee
//
//  Created by Aditya Mishra on 30/10/20.
//

import SwiftUI

struct Banner: View {
    @Binding var username : String
    var body: some View {
        VStack {
            HStack() {
                Image(systemName: "person.crop.circle")
                Text(username)
                    .font(.custom("Nunito",size: 16))
                Button(action: {}){
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color("FontColor"))
                }
                Spacer()
            }
            .padding()
            .frame(height: 55)
            .background(Color("BannerColor"))
        }
    }
}
