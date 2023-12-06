//
//  Person.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 05/12/23.
//

import Foundation

struct Person {
    var name: String
    var profilePicture: String
    
    var hobbies: [String]
    
    init(name: String, profilePicture: String, hobbies: [String]) {
        self.name = name
        self.profilePicture = profilePicture
        self.hobbies = hobbies
    }
}

extension Person {
    static let myProfile = Person(name: "Bernardo Santiago", profilePicture: "profilePicture",
                                  hobbies: ["Coding", "Teaching", "Reading", "Running"])
}
