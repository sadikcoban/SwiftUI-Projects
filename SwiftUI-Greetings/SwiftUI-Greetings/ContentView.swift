//
//  ContentView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 1.02.2023.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(
                alignment: .leading
            ) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
        }
        
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .blue,
                Color(red: 139/255, green: 80/255, blue: 240/255)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.2)
        .ignoresSafeArea()
    }
}

import UIKit
struct TextView: View {
    @State var color: Color
    let text: String
    let colors: [Color] = [
        .red, .green, .blue,
        .orange, .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0),
        Color(red: 0, green: 0.5, blue: 0),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
      //          .foregroundColor(.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}


struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let caption: [String] = [
        "Exploring iOS 16 programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.thin)
            }.padding()
                .onTapGesture {
                    withAnimation(Animation.spring(blendDuration: 0.4)) {
                        let rand = Int.random(in: 0..<caption.count)
                        if(rand == captionIndex){
                            let newRand = (rand + 1) % caption.count
                            print(newRand)
                            captionIndex = newRand
                            return
                        }
                        captionIndex = rand
                    }
                    
                }
            Spacer()
            Circle()
                .strokeBorder(
                    AngularGradient(
                        gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]),
                        center: .center,
                        angle: .zero
                    ),
                    lineWidth: 15
                )
                .rotationEffect(isRotated ? .zero : .degrees(560))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation(Animation.easeIn(duration: 0.5)) {
                        isRotated.toggle()
                    }
                }
        }
        .padding()
    }
}

struct MessagesView: View {
    let messages = [
        DataItemModel(text: "Hello There!", color: Color("Green")),
        DataItemModel(text: "Welcome to swift programming", color : .gray),
        DataItemModel(text: "Are you ready to,", color: .yellow),
        DataItemModel(text: "Start exploring?", color: .red),
        DataItemModel(text: "Boom", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) {
                TextView(color: $0.color,text: $0.text)
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
