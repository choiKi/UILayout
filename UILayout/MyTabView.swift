//
//  MyTabView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/23.
//

import Foundation
import SwiftUI

struct MyTabView : View {
  
    var body: some View {
            TabView{
                Color.red
                Color.blue
                Color.green
                Color.yellow
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
}

struct Previews_MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
