//
//  PhotosCarousel.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import SwiftUI

struct PhotosCarousel: View {
    let photoNames: [String]
    var urls: [URL] {
        photoNames.map({ URL(string: $0) ??
            URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Image_not_available.png/640px-Image_not_available.png")! })
    }
    
    var body: some View {
        TabView {
            ForEach(urls, id: \.absoluteString) { url in
                AsyncImage(url: url) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                } placeholder: {
                    ProgressView()
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    PhotosCarousel(photoNames: Person.myProfile.photoURLs)
}
