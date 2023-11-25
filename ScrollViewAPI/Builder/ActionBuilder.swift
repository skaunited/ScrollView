//
//  ActionBuilder.swift
//  ScrollViewAPI
//
//  Created by Skander BAHRI on 23/11/2023.
//

@resultBuilder
struct ActionBuilder {
    static func buildBlock(_ components: Action...) -> [Action] {
        components
    }
}
