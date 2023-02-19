//
//  GridBasics.swift
//  SwiftUI Basics
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct GridBasics: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            Grid {
                GridRow {
                    Rect(color: .pink, count: 10, total: 15)
                    Rect(color: .blue, count: 5, total: 15)
                }
                GridRow {
                    Rect(color: .red, count: 6, total: 15)
                    Rect(color: .orange, count: 3, total: 15)
                    Rect(color: .yellow, count: 6, total: 15)
                }
            }
        }
    }
}

struct Rect: View {
    let color: Color
    let count: Int
    let total: Int
    
    var text: String {
        "\(count) out of \(total)"
    }
    var body: some View {
        Rectangle()
            .fill(color)
            .cornerRadius(20)
            .overlay(
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            )
            .gridCellColumns(count)
    }
}

struct GridBasics_Previews: PreviewProvider {
    static var previews: some View {
        GridBasics()
    }
}
