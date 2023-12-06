//
//  ContentView.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileView(person: Person.myProfile)
                    .navigationTitle("My profile")
            }
        }
    }
}

#Preview {
    ContentView()
}
