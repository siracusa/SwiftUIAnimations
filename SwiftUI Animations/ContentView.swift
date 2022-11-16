//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by John Siracusa on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    @State var atTop = true

    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 0) {
                Image(systemName: "globe")
                    .resizable()
                    .frame(
                        width: 64,
                        height: 64,
                        alignment: .top
                    )
            }
            .overlay(
                ZStack(alignment: .center) {
                    Capsule()
                        .fill(.blue)
                        .frame(minWidth: 25, minHeight: 25, alignment: .center)
                    Text(atTop ? "1" : "2")
                        .padding([ .leading, .trailing ], 5)
                        .font(.system(size: 12, design: .rounded))
                        .foregroundColor(.white)
                }
                .fixedSize()
                .padding(.leading, -5)
                .padding(.top, -5),

                alignment: .topLeading
            )
            .padding(10)
            .frame(height: 170, alignment: atTop ? .top : .bottom)
            
            VStack(alignment: .center, spacing: 0) {
                Button("Move") {
                    withAnimation(.default) {
                        atTop = !atTop
                    }
                }
                .frame(width: 84, height: 50)
                .padding(10)
            }
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
