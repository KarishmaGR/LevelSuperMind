//
//  ListOption.swift
//  LevelsupermindiosAssignment
//
//  Created by enjay on 28/02/25.
//

import SwiftUI

struct ListOption: View {
    var body: some View {
        VStack(spacing: 15) {
            OptionRow(icon: "heart.fill", title: "My Favorites")
            OptionRow(icon: "arrow.down.to.line.alt", title: "Downloads")
            OptionRow(icon: "music.note.list", title: "My Playlists")
            OptionRow(icon: "book.fill", title: "My Journal Entries")
        }
        .padding(.horizontal)
    }
}

struct OptionRow: View {
    var icon: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
            Text(title)
                .foregroundColor(.white)
                .font(.headline)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}
#Preview {
    ListOption()
}
