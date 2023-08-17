//
//  NewsDetailView.swift
//  Newstar
//
//  Created by H on 2023/08/17.
//

import SwiftUI
import Foundation

struct NewsDetailView: View {
    
    @State var isNewsBookmarked: Bool = false
    var newsDate: Date = Date(timeIntervalSince1970: 0)
    var newsTitle: String = "Crypto investors should be prepared to lose all their money, BOE governor says."
    var newsReporter: String = "Ryan Browne"
    var newsContent: String = """
    LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.
    
    Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward $20,000, only to sink as low as $3,122 a year later.
    
    Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”
    
    “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”
    
    Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.
    
    “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.
    
    “If consumers invest in these types of product, they should be prepared to lose all their money.”
    
    Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”
    """
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
//                AsyncImage(url: URL(string: "https://cdn.discordapp.com/attachments/1113023221197979732/1141685411601727548/NewsImage.png")!)
                AsyncImage(url: URL(string: "https://cdn.discordapp.com/attachments/1113023221197979732/1141685411601727548/NewsImage.png")!) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                } placeholder: {
                    ProgressView()
                }
                .frame(maxWidth: .infinity)
                .ignoresSafeArea()
                
                VStack {
                    /// 뉴스 헤더
                    VStack(alignment: .leading, spacing: 10) {
                        Text("\(formattingDate(newsDate))")
                            .font(.subheadline)
                        Text("\(newsTitle)")
                            .font(.title2)
                            .bold()
                        Text("Published by \(newsReporter)")
                            .font(.subheadline)
                    }
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(content: {
                        Color(uiColor: .systemGray6)
                            .opacity(0.9)
                    })
                    .opacity(10)
                    .cornerRadius(15)
                    .padding(.horizontal, 20)
                    
                    /// 뉴스 바디
                    ScrollView(.vertical) {
                        VStack {
                            Text("\(newsContent)")
                                .multilineTextAlignment(.leading)
                                .lineSpacing(2)
                            HStack {
                                Text("hashtag1")
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                        
                        Spacer()
                    }
//                    .frame(height: .infinity)
                }
                .offset(CGSize(width: 0, height: 120))
            }
            .toolbar {
                Button {
                    isNewsBookmarked.toggle()
                    print(#function)
                } label: {
                    if isNewsBookmarked {
                        Image(systemName: "heart.fill")
                            .tint(Color(uiColor: .systemGray6))
                    } else {
                        Image(systemName: "heart")
                            .tint(Color(uiColor: .systemGray6))
                    }
                }
            }
        }
    }
    
    func formattingDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: date)
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView()
    }
}
