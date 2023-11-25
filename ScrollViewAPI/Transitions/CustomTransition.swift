//
//  CustomTransition.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 25/11/2023.
//

import SwiftUI

struct CustomTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .mask {
                GeometryReader { _ in
                    Rectangle()
                        .offset(y: phase == .identity ? 0 : 99)
                }
                .containerRelativeFrame(.horizontal)
            }
    }
}
