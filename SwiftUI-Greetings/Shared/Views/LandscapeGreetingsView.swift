//
//  LandscapeGreetingsView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack(spacing: 0) {
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
        }
        
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
