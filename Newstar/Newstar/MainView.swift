//
//  MainView.swift
//  Newstar
//
//  Created by 박채영 on 2023/08/09.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: headerView()){
                    ZStack {
                        Image("NewsImage")
                            .resizable()
                            .frame(width: 321, height: 240)
                        VStack(alignment: .leading) {
                            Spacer()
                            Spacer()
                            Text("by Ryan Browne")
                                .font(.caption)
                            .padding(EdgeInsets(top: 0, leading: 11, bottom: 0.5, trailing: 0))
                            Text("Crypto investors should be prepared to lose all their money, BOE governor says")
                                .font(.headline)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0, trailing: 11))
                            Spacer()
                            Text("“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”").font(.caption2)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 15, trailing: 11))
                        }
                    }
                    .frame(width: 321, height: 240)
                    .foregroundColor(.white)
                }
                Section(header: headerView()){
                    ZStack {
                        Image("sportImage")
                            .resizable()
                            .frame(width: 321, height: 240)
                        VStack(alignment: .leading) {
                            Spacer()
                            Spacer()
                            Text("by Ryan Browne")
                                .font(.caption)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0.5, trailing: 0))
                            Text("또 당신입니까…메시 6경기 연속골로 마이애미 컵대회 결승 견인")
                                .font(.headline)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0, trailing: 11))
                            Spacer()
                            Text("올 시즌 동부 최약체로 분류됐으나 메시를 품은 뒤 리그스컵에서 거침없는 상승세를 보인다.").font(.caption2)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 15, trailing: 11))
                        }
                    }
                    .frame(width: 321, height: 240)
                    .foregroundColor(.white)
                }
                Section(header: headerView()){
                    ZStack {
                        Image("economyImage")
                            .resizable()
                            .frame(width: 321, height: 240)
                        VStack(alignment: .leading) {
                            Spacer()
                            Spacer()
                            Text("by Ryan Browne")
                                .font(.caption)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0.5, trailing: 0))
                            Text("상온 초전도체는 신기루?…네이처 LK-99, \"단순 불순물이다\"")
                                .font(.headline)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0, trailing: 11))
                                
                            Spacer()
                            Text("국제 학술지 네이처는 16일(현지시간) \"독일 슈투트가르트 막스플랑크 고체연구소 연구팀이 'LK-99'가 초전도 유사 현상을 보이는 이유를 규명하고 초전도체가 아니라는 사실을 밝혀냈다\"고 보도했다.").font(.caption2)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 15, trailing: 11))
                        }
                    }
                    .frame(width: 321, height: 240)
                    .foregroundColor(.white)
                }
                Section(header: headerView()){
                    ZStack {
                        Image("pubao")
                            .resizable()
                            .frame(width: 321, height: 240)
                            .cornerRadius(10)
                            
                        VStack(alignment: .leading) {
                            Spacer()
                            Spacer()
                            Text("by Ryan Browne")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0.5, trailing: 0))
                            Text("대나무·당근 '냠냠'…푸바오 생일 파티, 한국에선 올해가 마지막일 수도")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 0, trailing: 11))
                                
                            Spacer()
                            Text("한·중 임대계약상 4살 되기전 중국으로 돌아가야…이르면 다음달 반환 협상").font(.caption2)
                                .padding(EdgeInsets(top: 0, leading: 11, bottom: 15, trailing: 11))
                        }
                        
                        
                    }
                    .frame(width: 321, height: 240)
                    .foregroundColor(.white)
                    
                }
                
            }
            .background(.clear)
            .scrollContentBackground(.hidden)
            .navigationTitle(Text("이번주 NEWSTAR"))
        }
    }
}
struct headerView: View {
    var body: some View {
        HStack {
            Image("User")
            Text("남〇〇 기자")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
