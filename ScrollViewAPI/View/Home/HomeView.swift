//
//  HomeView.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 23/11/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var colors: [Color] = [.black, .yellow, .purple, .brown]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading, spacing: 10){
                ForEach(colors, id: \.self) { color in
                    SwipeAction(cornerRadius: 10,
                                direction: .trailing) {
                        CardView(color: color)
                    } actions: {
                        Action(tint: .blue, icon: "star.fill") {
                            print("Bookmarked")
                        }
                        
                        Action(tint: .red, icon: "trash.fill") {
                            withAnimation(.easeInOut) {
                                colors.removeAll { $0 == color }
                            }
                        }
                    }
                }
            }
            .padding(16)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ContentView()
}
