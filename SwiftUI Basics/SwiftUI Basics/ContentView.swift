//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct ContentView: View {
    private let colorList1: [Color] = [.red, .purple, .green, .pink]
    private let colorList2: [Color] = [.black, .white, .blue]
    private let offsetValues: [CGFloat] = [-200, 0, 200, 0]
    
    @State private var screenTapped = false
    @State private var offsetYIndex = 0
    
    let rotationAngle = 360.0
    
    var body: some View {
        ZStack() {
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.8)
                .ignoresSafeArea()
            
            Text(screenTapped ? "The Basics of SwiftUI" : "To know what you know and what you do not know, that is the true knowledge")
                .font(screenTapped ? .largeTitle : .title)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .offset(y: offsetValues[offsetYIndex % 4])
                .padding()
                .rotation3DEffect(.degrees(screenTapped ? .zero : rotationAngle), axis: (x: 1, y: 1, z: 1))
            
        }
        .onTapGesture {
            // Change screen color and text location when tapped
            
            withAnimation(.easeIn(duration: 0.6)) {
                screenTapped.toggle()
                offsetYIndex += 1
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
