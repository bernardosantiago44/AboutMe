//
//  ProjectDetailView.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import SwiftUI

struct ProjectDetailView: View {
    let project: Project
    
    var body: some View {
        List {
            Text(project.description)
            Text(project.rating, format: .number) + Text(" / 5 rating")
        }
        .navigationTitle(project.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProjectDetailView(project: Project.exampleProjects[0])
}
