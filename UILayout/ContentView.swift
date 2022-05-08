//
//  ContentView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var isNavigationBar: Bool = true

    var body: some View {
        
        NavigationView {
        
        ZStack(alignment: .bottomTrailing) {
            
            VStack(alignment: .leading, spacing: 10) {
                HStack(){
                    
                    NavigationLink(destination: MyList()) {
                        Image(systemName: "line.horizontal.3").font(.system(size: 30)).foregroundColor(.black)
                    }
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
                        MyCard(icon: "flame.fill", title: "알바가기", start: "14:00", end: "16:00", bgColor: Color.purple)
                        MyCard(icon: "tray.fill", title: "집 청소", start: "16:00", end: "18:00", bgColor: Color.blue)
                        MyCard(icon: "book.fill", title: "공부 하기", start: "18:00", end: "20:00", bgColor: Color.red)
                        MyCard(icon: "person.fill", title: "산책 하기", start: "20:00", end: "21:00", bgColor: Color.green)
                    }
                }
                .padding(.horizontal, 20)
            }
            
            Circle().frame(width: 75, height: 50, alignment: .bottomTrailing).foregroundColor(.white)
            NavigationLink(destination: AddCard(title: "", start: "", end: "")) {
                Image(systemName: "plus.circle.fill").foregroundColor(.yellow).font(.system(size: 60))
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(.yellow))
                }
            } // ZStack
        .navigationTitle("메인 뷰")
        .navigationBarHidden(self.isNavigationBar)
        .onAppear {
            self.isNavigationBar = true
        }
        } // Navigation
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
