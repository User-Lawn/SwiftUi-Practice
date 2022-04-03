//
//  MyVstacView.swift
//  SwiftUi-tutorial
//
//  Created by Jun.Mac on 2022/04/03.
//

import SwiftUI

struct MyVstacView: View {
    var body: some View {
        VStack {
            Text("1!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            Text("2!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            Text("3!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
        }.padding().background(.yellow)
    }
        
}

struct MyVstacView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstacView()
    }
}

