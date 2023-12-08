//
//  AboutMeApp.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 05/12/23.
//

import SwiftUI

@main
struct AboutMeApp: App {
    @StateObject var dataHolder = DataHolder()
    
    var body: some Scene {
        WindowGroup {
            ContentView(dataHolder: self.dataHolder)
        }
    }
}
