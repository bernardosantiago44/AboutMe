//
//  EditHobbyView.swift
//  AboutMe
//
//  Created by Bernardo Santiago Marin on 06/12/23.
//

import SwiftUI

struct EditHobbyView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var hobby: String
    var oldHobbyName: String {
        self.hobby
    }
    
    var body: some View {
        Form {
            HStack {
                TextField("Hobby", text: $hobby)
                Button("", systemImage: "x.circle.fill") {
                    self.hobby = ""
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button(role: .destructive) {
                    self.hobby = oldHobbyName
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                
            }
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        EditHobbyView(hobby: .constant("Coding"))
    }
}
