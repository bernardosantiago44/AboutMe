//
//  Person.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import Foundation

struct Person {
    var name: String
    var profilePicture: String
    
    var hobbies: [String]
    var projects: [Project]
    
    init(name: String, profilePicture: String, hobbies: [String], projects: [Project]) {
        self.name = name
        self.profilePicture = profilePicture
        self.hobbies = hobbies
        self.projects = projects
    }
}

extension Person {
    static let myProfile = Person(name: "Bernardo Santiago", profilePicture: "profilePicture",
                                  hobbies: ["Coding", "Teaching", "Reading", "Running"],
                                  projects: Project.exampleProjects)
}
