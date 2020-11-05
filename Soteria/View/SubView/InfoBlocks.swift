//
//  InfoBlock.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import SwiftUI

struct VitalBlocks: View {
    @Binding var userData : [InfoCard]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 30) {
            ForEach(0...3, id: \.self) { index in
                Block(data: $userData[index])
            }
        }
    }
}

struct SleepBlocks: View {
    @Binding var userData : [InfoCard]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 30) {
            ForEach(4...5, id: \.self) { index in
                Block(data: $userData[index])
            }
        }
    }
}

struct Block: View {
    @Binding var data : InfoCard
    @State var showDesc = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 145, height: 145)
                .foregroundColor(Color("BlockColor"))
            
            VStack {
                HStack {
                    Text(data.title)
                        .font(.custom("Nunito", size: 20))
                    Spacer()
                    Button(action: {
                        self.showDesc.toggle()
                    }){
                        Image(systemName: "info.circle")
                    }
                    .sheet(isPresented: $showDesc){
                        DescriptionLeaf(infoDesc: $data, showDesc: $showDesc)
                    }
                }

                HStack(alignment: .bottom) {
                    Image(systemName: data.icon)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("\(data.value)")
                            .font(.custom("Nunito", size: 45))
                        Text(data.unit)
                    }
                }
            }
            .padding([.trailing,.leading])
            .frame(width: 160, height: 145)
            .foregroundColor(Color("FontColor"))
        }
    }
}
