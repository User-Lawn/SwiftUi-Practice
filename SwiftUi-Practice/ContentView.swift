//
//  ContentView.swift
//  SwiftUi-Practice
//
//  Created by Jun.Mac on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(spacing: 10.0) {
                Text("hello")
                Text("world")
            }
        }
        
      
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

