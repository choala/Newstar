//
//  BookmarkItemView.swift
//  Newstar
//
//  Created by yuri rho on 2023/08/17.
//

import SwiftUI

struct BookmarkItemView: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://mimgnews.pstatic.net/image/origin/662/2023/08/16/26509.jpg?type=nf264_176&ut=20230816200103")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 80, height: 80)
            .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text("News title news title news")
                    .font(.headline)
                    .bold()
                Text("contents sth llal sth contents sth sdkna sth contents sth sad11 sth contekkk23nts sth")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack() {
                    Text("NewyorkTimes")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    Text("23mins ago")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct BookmarkItemView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkItemView()
    }
}