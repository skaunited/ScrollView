//
//  ContentView.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 23/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView()
                .navigationTitle("Messages")
        }
    }
}

#Preview {
    ContentView()
}
