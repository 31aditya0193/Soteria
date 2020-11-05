//
//  ContentView.swift
//  Dozee
//
//  Created by Aditya Mishra on 30/10/20.
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
