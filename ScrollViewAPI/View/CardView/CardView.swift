//
//  CardView.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 25/11/2023.
//

import SwiftUI

struct CardView: View {
    
    @State var color: Color
    
    var body: some View {
        HStack(spacing: 8) {
            Circle()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 8) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 120, height: 5)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 90, height: 5)
            }
            
            Spacer(minLength: 0)
        }
        .foregroundStyle(.white.opacity(0.4))
        .padding([.horizontal, .vertical], 16)
        .background(color.gradient, in: .rect(cornerRadius: 10))
    }
}
