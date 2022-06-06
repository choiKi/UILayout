//
//  MyGeometryReader.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/29.
//

import SwiftUI

struct MyGeometryReader: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("A")
                    .frame(width: geometry.size.width / 3)
                    .background(Color.red)
                Text("B")
                    .frame(width: geometry.size.width / 4)
                    .background(Color.blue)
                Text("C")
                    .frame(width: geometry.size.width / 5)
                    .background(Color.green)
                }
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .foregroundColor(Color.white)
                .font(.largeTitle)
            }
           
        }
        
}

struct Previews_MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
        MyGeometryReader()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
