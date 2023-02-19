//
//  BackgroundView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

/// This is the background view which contains a linear gradient
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

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
