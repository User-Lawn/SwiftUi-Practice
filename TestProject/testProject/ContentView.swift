//
//  ContentView.swift
//  testProject
//
//  Created by Jun.Mac on 2022/04/03.
//

import SwiftUI

struct ContentView: View {
    
    // properties
    var body: some View {
        
        VStack {
            Button("Click Me", action:  {
                print("Hello World")
            })
            Button("Click Me") {
                print("Hello World")
            }
            Button(action: {
                print("Hello world")
            }, label: {
                HStack {
                    Image(systemName: "pencil")
                    Text("Click Me")
                }
            })
        }
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
