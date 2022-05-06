//
//  MyBasicCard.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import Foundation
import SwiftUI

struct MyBasicCard : View {
    
    var body : some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill").font(.system(size:60)).foregroundColor(.white)
            VStack(alignment: .leading ,spacing: 10) {
                Text("알바 가기")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Text("14:00 ~ 18:00")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            Spacer()
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(25)
        
    }
    
}


struct Previews_MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
