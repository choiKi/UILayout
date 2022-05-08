//
//  MyBasicCard.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import Foundation
import SwiftUI

struct MyCard : View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body : some View {
        HStack(spacing: 20) {
            Image(systemName: icon).font(.system(size:60)).foregroundColor(.white)
            VStack(alignment: .leading ,spacing: 10) {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("\(start) ~ \(end)")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            Spacer()
        }
        .padding()
        .background(bgColor)
        .cornerRadius(25)
        
    }
    
}


struct Previews_MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "flame.fill", title: "알바가기", start: "14:00", end: "16:00", bgColor: Color.purple)
    }
}
