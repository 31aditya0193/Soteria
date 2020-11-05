//
//  ContentView.swift
//  Soteria
//
//  Created by Aditya Mishra on 05/11/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("AccentColor")
                .ignoresSafeArea()
            Dashboard()
        }
    }
}
