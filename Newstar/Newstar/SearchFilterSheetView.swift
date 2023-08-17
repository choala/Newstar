//
//  SearchFilterSheetView.swift
//  Newstar
//
//  Created by kokori on 2023/08/17.
//

import SwiftUI

struct SearchFilterSheetView: View {
    var body: some View {
      VStack {
        HStack {
          Text("Filter")
            .font(.largeTitle)
          Spacer()
          Button {
            //filter reset
          } label: {
            HStack {
              Image(systemName: "trash")
              Text("Reset")
            }
            .padding()
            .border(Color.black)
            .cornerRadius(15)
            .overlay(
              RoundedRectangle(cornerRadius: 15)
                .strokeBorder(.black, lineWidth: 1)
            )
            .foregroundColor(.black)
          }
        }.padding()
        
        Spacer()
        VStack(alignment: .leading) {
          
          Text("Sort By")
        }
      }
    }
}

struct SearchFilterSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterSheetView()
    }
}
