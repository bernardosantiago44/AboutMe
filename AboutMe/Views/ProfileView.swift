//
//  ProfileView.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import SwiftUI

struct ProfileView: View {
    let person: Person
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        VStack {
            PictureAndNameHeader(person: self.person)
            
            LeadingAlignedText(text: "Hobbies")
                .font(.headline)
            
            LazyVGrid(columns: self.columns, content: {
                ForEach(person.hobbies, id: \.self) { hobby in
                    GroupBox{
                        Text(hobby)
                            .frame(maxWidth: .infinity)
                    }
                }
            })
            .padding(.horizontal)
            
            Divider()
            
            LeadingAlignedText(text: "Projects")
                .font(.headline)
            
            LazyVGrid(columns: self.columns, content: {
                ForEach(person.projects) { project in
                    NavigationLink {
                        ProjectDetailView(project: project)
                    } label: {
                        GroupBox {
                            Text(project.title)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            })
            .padding(.horizontal)
            
            Divider()
            LeadingAlignedText(text: "Photos")
                .font(.headline)
            
            PhotosCarousel(photoNames: self.person.photoURLs)
                .frame(height: 400)
                .padding(.horizontal)
        }
    }
}

struct LeadingAlignedText: View {
    let text: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
