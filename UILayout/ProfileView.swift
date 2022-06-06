//
//  ProfileView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/09.
//

import Foundation
import SwiftUI

struct ProfileView : View {
    
    var body: some View {
        NavigationView{
            VStack {
                Image("1").resizable().frame(width: 250, height: 250).clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 10).foregroundColor(.gray))
                Text("최기훈")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding()
                Text("SwiftUI 공부 중!!")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(.secondary)
                HStack {
                    Text("구독하러 가기")
                        .fontWeight(.heavy)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 150, height: 70)
                        .background(Color.orange)
                        .cornerRadius(30)
                    Text("오픈카톡방 가기")
                        .fontWeight(.heavy)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 150, height: 70)
                        .background(Color.yellow)
                        .cornerRadius(30)
                    
                }//HStack
                .navigationTitle("내 프로필")
                .navigationBarItems(trailing: NavigationLink(destination : Text("프로필 화면입니다.")){
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                })
            Spacer()
            }// VStack
            .padding(.top, 40)
        }
        
    }
}

struct Previews_ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
        }
    }
}
