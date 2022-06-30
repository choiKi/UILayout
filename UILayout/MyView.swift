//
//  MyView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/06/06.
//

import Foundation
import SwiftUI

struct MyView: View {
    
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack {
            
            bgColor.edgesIgnoringSafeArea(.all)
            
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
        .animation(.none)
    }
    
}

struct Previews_MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "안녕하세요", bgColor: Color.purple)
    }
}
