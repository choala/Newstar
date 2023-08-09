//
//  NewstarTabView.swift
//  Newstar
//
//  Created by 박채영 on 2023/08/09.
//

import SwiftUI

struct NewstarTabView: View {
    @State private var selectedIndex: Int = 1
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    VStack {
                        Text("Newspaper")
                        Image(systemName: "newspaper")
                    }
                }
                .tag(1)
            CategoryView()
                .tabItem {
                    VStack {
                        Text("NewCategoryspaper")
                        Image(systemName: "square.grid.2x2")
                    }
                }
                .tag(2)
            BookmarkView()
                .tabItem {
                    VStack {
                        Text("Bookmark")
                        Image(systemName: "bookmark")
                    }
                }
                .tag(3)
        }
    }
}

struct NewstarTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewstarTabView()
    }
}
