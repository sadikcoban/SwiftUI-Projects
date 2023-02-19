//
//  NavigationExample.swift
//  SwiftUI Basics
//
//  Created by Sadık Çoban on 19.02.2023.
//

import SwiftUI
import UIKit


class SampleViewController: UIViewController {
    
}

struct NavigationExample: View {
    @State var name: String = ""
    @State var age: String = ""
    var body: some View {
        NavigationStack {
            VStack{

                VStack(alignment: .leading) {
                    Text("Enter your name")
                    TextField("Name", text: $name)
                }
                
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("Age", text: $age)
                }

                
                NavigationLink {
                    DrinkingView(name: name, age: age, drinkingAge: 18)
                    
                } label: {
                    Text("OK")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke()
                        )
                }
                
                NavigationLink {
                    ZStack {
                        Color.orange.ignoresSafeArea()
                        Text("NEW VIEW")
                    }
                    
                } label: {
                    Text("GO TO ORANGE")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke()
                        )
                }
                
                
                
            }
            .padding()
            .navigationTitle("Example")
            
        }
    }
}



struct DrinkingView: View {
    let name: String
    let age: String
    let drinkingAge: Int
    
    
    var numericalAge: Int {
        Int(age) ?? -1
    }
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            if numericalAge > drinkingAge {
                Text("\(name.capitalized) you can drink")
            } else if numericalAge <= 0 {
                Text("\(age) is not valid")
            } else {
                VStack {
                    Text("Sorry, \(name.capitalized) cant serve you")
                }
            }
        }
    }
}
struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExample()
    }
}
