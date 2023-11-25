//
//  ScrollViewHolder.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 25/11/2023.
//

import SwiftUI

struct ScrollViewHolder<Content: View>: View {
    @State var alignment: HorizontalAlignment = .leading
    @State var spacing: CGFloat = 10
    @State var cornerRadius: CGFloat = 10
    @State var direction: SwipeDirection = .trailing
    @State var colors: [Color] = [.black, .yellow, .purple, .brown]
    @State var actions: [Action]
    @ViewBuilder var content: Content
    
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: alignment,
                       spacing: spacing){
                ForEach(colors, id: \.self) { color in
                    SwipeAction(cornerRadius: cornerRadius,
                                direction: direction,
                                actions: actions) {
                        content
                    }
                }
            }
            .padding(16)
        }
        .scrollIndicators(.hidden)
    }
}
