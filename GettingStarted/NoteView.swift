//
//  NoteView.swift
//  GettingStarted
//
//  Created by Winsome Tang on 2024-03-17.
//
import SwiftUI

struct NoteView: View {
    @State var note: Note

    var body: some View {
        HStack(alignment: .center, spacing: 5.0) {
            VStack(alignment: .leading, spacing: 5.0) {
                Text(note.name)
                    .bold()
                if let description = note.description {
                    Text(description)
                }
            }

            if let image = note.image {
                Spacer()
                RemoteImage(name: image)
                    .frame(width: 30, height: 30)
            }
        }
    }
}
//
//#Preview {
//    NotesView(notes: [
//        Note(
//            name: "First note",
//            description: "This is an example of a long note description that has \nexplicit line breaks.",
//            image: "mic"
//        ),
//        Note(
//            name: "Second note",
//            description: "This is a short description.",
//            image: "phone"
//        ),
//        Note(
//            name: "Third note"
//        )
//    ])
//}
