//
//  PersonHeader.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import SwiftUI

struct PictureAndNameHeader: View {
    let person: Person
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(person.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .clipShape(Circle())
                .overlay(.bar, in:
                            Circle()
                            .stroke(lineWidth: 5)
                )
                .shadow(radius: 5)
            Text(person.name)
                .font(.title)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                .offset(y: -20)
                
        }
    }
}

#Preview {
    PictureAndNameHeader(person: Person.myProfile)
}
