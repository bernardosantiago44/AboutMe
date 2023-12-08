//
//  DataHolder.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import Foundation

final class DataHolder: ObservableObject {
    @Published var person: Person = Person.myProfile
    
}
