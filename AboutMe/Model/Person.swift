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
    var photoURLs: [String]
    
    init(name: String, profilePicture: String, hobbies: [String], projects: [Project], photos: [String]) {
        self.name = name
        self.profilePicture = profilePicture
        self.hobbies = hobbies
        self.projects = projects
        self.photoURLs = photos
    }
}

extension Person {
    static let myProfile = Person(name: "Bernardo Santiago", profilePicture: "profilePicture",
                                  hobbies: ["Coding", "Teaching", "Reading", "Running"],
                                  projects: Project.exampleProjects, 
                                  photos: ["https://avatars.githubusercontent.com/u/63428964?v=4",
                                           "https://i.postimg.cc/Nj6MwxjB/IMG-6215.jpg",
                                           "https://i.postimg.cc/tRBWKpm2/temp-Imagem-ZUS7i.jpg",
                                           "https://i.postimg.cc/NMJFzffX/temp-Imagene-VEuz.jpg"
                                          ])
}
