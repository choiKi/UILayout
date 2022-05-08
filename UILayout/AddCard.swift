//
//  AddCard.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/09.
//

import Foundation
import SwiftUI


struct AddCard : View {
    
    
    @State var title : String
    @State var start : String
    @State var end : String
    
    var body : some View {
        VStack {
            HStack {
                Text("목록 명 : ")
                TextField("목록 명을 입력하세요", text: $title)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 10))
            HStack {
                Text("시작 시간 : ")
                TextField("시간을 입력하세요", text: $start)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 10))
            HStack {
                Text("끝  시간   : ")
                TextField("시간을 입력하세요", text: $end)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.init(top: 10, leading: 20, bottom: 30, trailing: 10))
            
            Text("목록 미리보기")
                .padding()
                .frame(width: .infinity , alignment: .center)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(20)
            MyCard(icon: "flame.fill", title: "\(title)", start: "\(start)", end: "\(end)", bgColor: Color.blue)
            
        }
    }
}

struct Previews_AddCard_Previews: PreviewProvider {
    static var previews: some View {
        AddCard(title: "", start: "", end: "")
    }
}
