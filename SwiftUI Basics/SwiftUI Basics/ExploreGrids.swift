//
//  ExploreGrids.swift
//  SwiftUI Basics
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI

struct ExploreGrids: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid {
                GridRow {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                }
                
                GridRow {

                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                }
                
            }
            .padding()
        }
    }
}

struct ExploreGrids_Previews: PreviewProvider {
    static var previews: some View {
        ExploreGrids()
    }
}
