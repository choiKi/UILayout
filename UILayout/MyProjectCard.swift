//
//  MyProjectCard.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import Foundation
import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert: Bool = false
    
    var body : some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("프로젝트 하기")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .padding(.bottom,5)
            Text("10:00 ~ 14:00")
                .foregroundColor(.gray)
                .padding(.bottom,10)
            HStack {
                Image("1").resizable().frame(width: 50, height: 50).clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(.white))
                Image("33").resizable().frame(width: 50, height: 50).clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(.white))
                Image("44").resizable().frame(width: 50, height: 50).clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 2).foregroundColor(.white))
                
                Spacer()
                
                Button(action: {
                    // 버튼의 기능
                    print("버튼 클릭")
                    self.shouldShowAlert = true
                }){
                    // button의 외형
                    Text("확인")
                        .fontWeight(.bold)
                        .frame(width: 80)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("확인!"))
                }
                
                
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(25)
    }
    
}

struct Previews_MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
