//
//  MessagesView.swift
//  SwiftUI-Greetings
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct MessagesView: View {
    let messages = [
        DataItemModel(text: "Hello There!", color: Color("Green")),
        DataItemModel(text: "Welcome to swift programming", color : .gray),
        DataItemModel(text: "Are you ready to,", color: .yellow),
        DataItemModel(text: "Start exploring?", color: .red),
        DataItemModel(text: "Boom", color: .purple)
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages) {
                    TextView(color: $0.color,text: $0.text)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
