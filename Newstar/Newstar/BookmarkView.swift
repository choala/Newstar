//
//  BookmarkView.swift
//  Newstar
//
//  Created by 박채영 on 2023/08/09.
//

import SwiftUI

struct BookmarkView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(1...10, id: \.self) {_ in
                        BookmarkItemView()
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Bookmark")
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
