//
//  HomeView.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 23/11/2023.
//

import SwiftUI

struct HomeView: View {
//    @State private var colors: [Color] = [.black, .yellow, .purple, .brown]
    @ActionBuilder var actions: [Action] {
        Action(tint: .blue, icon: "star.fill", index: 0) {
            print("Bookmarked")
        }
        
        Action(tint: .red, icon: "trash.fill", index: 0) {
            print("trash")
        }
    }
    
    var body: some View {
        ScrollViewHolder(actions: actions) {
            CardView(color: .yellow)
        }
    }
}

#Preview {
    ContentView()
}
