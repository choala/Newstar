//
//  CategoryDetailView.swift
//  Newstar
//
//  Created by 윤경환 on 2023/08/17.
//

import SwiftUI

struct CategoryDetailView: View {
    // MARK: - PROPERTIY

    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                Image("image1")
                    .resizable()
                    .scaledToFit()
                Image("image2")
                    .resizable()
                    .scaledToFit()
                Image("image3")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle(Text("Health"), displayMode: .large)
        }
    }
}
struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView()
    }
}
