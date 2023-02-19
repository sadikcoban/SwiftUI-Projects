//
//  ContentView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 1.02.2023.
//

import SwiftUI



struct GreetingsView: View {
    
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



struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}
