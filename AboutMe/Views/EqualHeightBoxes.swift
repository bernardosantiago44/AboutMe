//
//  EqualHeightBoxes.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 08/12/23.
//

import SwiftUI

struct MaxHeightKey: PreferenceKey {
    
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

extension View {
    func measureMaxHeight() -> some View {
        background(GeometryReader { proxy in
            Color.clear.preference(key: MaxHeightKey.self, value: proxy.size.height)
        })
    }
    
    func withMaxHeight(_ perform: @escaping (CGFloat) -> ()) -> some View {
        onPreferenceChange(MaxHeightKey.self) { perform($0) }
    }
}

struct EqualHeightBoxes: View {
    @State private var maxHeight: CGFloat = .infinity
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: self.columns, content: {
                ForEach(Person.myProfile.hobbies, id: \.self) { hobby in
                    cell(for: hobby)
                }
            })
            .withMaxHeight({ maxHeight = $0 })
            .padding(.horizontal)
        }
    }
    
    private func cell(for hobby: String) -> some View {
        GroupBox {
            Text(hobby)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: maxHeight)
                .measureMaxHeight()
        }
    }
}


#Preview {
    EqualHeightBoxes()
}
