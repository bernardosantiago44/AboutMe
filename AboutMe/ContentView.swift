//
//  ContentView.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataHolder: DataHolder
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileView(dataHolder: self.dataHolder)
                    .navigationTitle("My profile")
            }
        }
    }
}

#Preview {
    ContentView(dataHolder: DataHolder())
}
