//
//  Action.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 23/11/2023.
//

import SwiftUI

struct Action {
    private (set) var id: UUID = .init()
    var tint: Color
    var icon: String
    var iconFont: Font = .title
    var iconTint: Color = .white
    var isEnabled: Bool = true
    var index: Int
    var action: () -> ()
    
    static func == (lhs: Action, rhs: Action) -> Bool {
        lhs.id == rhs.id &&
        lhs.tint == rhs.tint &&
        lhs.icon == rhs.icon &&
        lhs.iconFont == rhs.iconFont &&
        lhs.iconTint == rhs.iconTint &&
        lhs.isEnabled == rhs.isEnabled &&
        lhs.index == rhs.index
    }
}

extension Action: Identifiable, Hashable {
    var identifier: String {
        return UUID().uuidString
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
}
