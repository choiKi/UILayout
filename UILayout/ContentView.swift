//
//  ContentView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            VStack(alignment: .leading, spacing: 10) {
                HStack(){
                    Image(systemName: "line.horizontal.3").font(.system(size: 30)).foregroundColor(.black)
                    Spacer()
                    Image(systemName: "person.circle.fill").font(.system(size: 30))
                }
                .padding(.horizontal,20)
                Divider()
                    .foregroundColor(.black )
                Text("최기훈의 할 일")
                    .fontWeight(.heavy)
                    .font(.system(size: 30))
                    .padding(.horizontal, 20)
                Spacer()
                ScrollView {
                    VStack(spacing : 15) {
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }
                }
                .padding(.horizontal, 20)
            }
            
            Circle().frame(width: 75, height: 50, alignment: .bottomTrailing).foregroundColor(.white)
            Image(systemName: "plus.circle.fill").foregroundColor(.yellow).font(.system(size: 60))
                .overlay(Circle().stroke(lineWidth: 2).foregroundColor(.yellow))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
