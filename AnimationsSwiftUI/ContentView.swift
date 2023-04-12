//
//  ContentView.swift
//  AnimationsSwiftUI
//
//  Created by sss on 11.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isStated = false
    @State var circleProgress: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                
                //1
                Button {} label: {
                    Image(systemName: "bag.badge.plus")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Circle())
                        .rotationEffect(Angle(degrees: isStated ? 0: -90))
                }
                .background(Circle().fill(.orange).shadow(radius: 8, x: 4, y: 4))
                .offset(x: 0, y: isStated ? -70: 0)
                .opacity(isStated ? 1: 0)
                
                //2
                Button {} label: {
                    Image(systemName: "calendar.badge.plus")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Circle())
                        .rotationEffect(Angle(degrees: isStated ? 0: -90))
                }
                .background(Circle().fill(.orange).shadow(radius: 8, x: 4, y: 4))
                .offset(x: isStated ? -70: 0, y: 0)
                .opacity(isStated ? 1: 0)
                
                
                //3
                
                Button {
                    withAnimation(.spring()) {
                        isStated.toggle()
                    }
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .padding()
                        .clipShape(Circle())
                        .rotationEffect(Angle(degrees: isStated ? 0: -90))
                }
                .background(Circle().fill(.orange).shadow(radius: 8, x: 4, y: 4))
                
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
