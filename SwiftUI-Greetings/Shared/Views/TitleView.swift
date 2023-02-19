//
//  TitleView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    var body: some View {
        HStack {
            GreetingsTextView(captionIndex: $captionIndex)
            Spacer()
            GreetingsCircleView(isRotated: $isRotated)
        }
        .padding()
    }
}


struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(captionIndex: $captionIndex)
            GreetingsCircleView(isRotated: $isRotated)
            Spacer()
        }
        .padding()
    }
}


struct GreetingsCircleView: View {
    @Binding var isRotated: Bool
    var body: some View {
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
}

struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    let caption: [String] = [
        "Exploring iOS 16 programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("greetings")
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
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalTitleView()
    }
}
