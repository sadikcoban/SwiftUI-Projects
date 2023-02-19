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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
