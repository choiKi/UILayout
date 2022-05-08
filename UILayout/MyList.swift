//
//  MyList.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/07.
//

import SwiftUI

struct MyList: View {
    
    
    init(isNavigtionBar: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        }else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        
        _isNavigtionBar = isNavigtionBar
    }
     
    @Binding var isNavigtionBar: Bool
    
    var body : some View {
        
        //. Text("view")
        
        List {
            Section(header: Text("header 1")){
                ForEach(1 ... 3, id: \.self) { index in
                    // Text(" \($0) 번째 행")
                    MyCard(icon: "flame.fill", title: "알바가기 \(index)", start: "14:00", end: "16:00", bgColor: Color.purple)
                }
            }
            .font(.system(size: 20))
            .foregroundColor(.black)
            .listRowInsets(EdgeInsets.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            Section(header: Text("header 2")){
                ForEach(1 ... 3, id: \.self) { index in
                    // Text(" \($0) 번째 행")
                    MyCard(icon: "book.fill", title: "알바가기 \(index)", start: "14:00", end: "16:00", bgColor: Color.blue)
                }
            }
            .font(.system(size: 20))
            .foregroundColor(.black)
            
        }.listStyle(GroupedListStyle())
            .navigationTitle("내 목록")
        
    }
}



struct Previews_MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
