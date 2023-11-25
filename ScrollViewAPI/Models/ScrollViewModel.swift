//
//  ScrollViewModel.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 25/11/2023.
//

import SwiftUI

struct ScrollViewModel<Content: View> {
    private (set) var id: UUID = .init()
    var color: Color
    var subView: Content
    
    static func == (lhs: ScrollViewModel, rhs: ScrollViewModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.color == rhs.color
    }
}

extension ScrollViewModel: Identifiable, Hashable {
    var identifier: String {
        return UUID().uuidString
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
}
