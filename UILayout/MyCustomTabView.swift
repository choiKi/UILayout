//
//  MyCustomTabView.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/29.
//

import Foundation
import SwiftUI

enum TabIndex {
    // case home
    // case cart
    // case profile
    case home, cart , prfile
    
}

struct MyCustomTabView : View{
    
    @State var tabIndex : TabIndex
    @State var largerScale: CGFloat = 1.3
    
    func changeMyView(tabIndex : TabIndex) -> MyView {
        
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: Color.red)
        case .cart:
            return MyView(title: "장바구니", bgColor: Color.green)
        case .prfile:
            return MyView(title: "프로필", bgColor: Color.blue)
        default:
            return MyView(title: "홈", bgColor: Color.green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home, .cart , .prfile:
            return Color.cyan
        default:
            return Color.orange
        }
    }
    
    func calCiclePosition(tabIndex: TabIndex ,geometry: GeometryProxy) -> CGFloat {
        switch tabIndex {
            case .home:
                return -(geometry.size.width / 3)
            case .cart:
                return 0
            case .prfile:
                return (geometry.size.width / 3)
            default:
                return -(geometry.size.width / 3)
            }
        }
    
    func circleColorChange(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.orange
        case .cart:
            return Color.yellow
        case .prfile:
            return Color.white
        default:
            return Color.gray
        }
    }
    
    var body : some View {
        
        GeometryReader { geometry in
            ZStack (alignment: .bottom){
                self.changeMyView(tabIndex: self.tabIndex)
                
                withAnimation {
                    Circle()
                        .frame(width: 90, height: 90)
                        .offset(x: self.calCiclePosition(tabIndex: self.tabIndex, geometry: geometry) ,y: 12)
                        .foregroundColor(self.circleColorChange(tabIndex: self.tabIndex))
                }
            
                    
                HStack(spacing: 0){
                    Button(action: {
                        print("home")
                        withAnimation {
                            self.tabIndex = .home
                        }
                    }) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .home ? -10 : 0)
                    }
                    .background(Color.orange)
                    Button(action: {
                        print("home")
                        withAnimation {
                            self.tabIndex = .cart
                        }
                        
                    }) {
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .cart ? -10 : 0)
                    }
                    .background(Color.yellow)
                    Button(action: {
                        print("home")
                        withAnimation {
                            self.tabIndex = .prfile
                        }
                        
                    }) {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .prfile ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .prfile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .prfile ? -10 : 0)
                    }
                    .background(Color.white)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Previews_MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
