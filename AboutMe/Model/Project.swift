//
//  Project.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import Foundation

struct Project: Identifiable {
    let id: String = UUID().uuidString
    
    var title: String
    var description: String
    var rating: Float
}

extension Project {
    static let exampleProjects: [Project] = [
        Project(title: "SwiftUI Course", description: "Gathered with 15 other people to learn iOS app development in Swift using the SwiftUI Library.", rating: 5),
        .init(title: "Periodic Table App", description: "Developed and launched a fully interactive chemistry periodic table in SwiftUI", rating: 4.6)
    ]
}
