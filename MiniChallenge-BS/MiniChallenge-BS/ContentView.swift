//
//  ContentView.swift
//  MiniChallenge-BS
//
//  Created by Jun.Mac on 2022/04/03.
//

import SwiftUI

struct ContentView: View {

    @State private var showingAlert = false
    var body: some View {
        
        ZStack {
            Image("배경").ignoresSafeArea()
            
            VStack {
                
                Image("이글루")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .offset(x:100 ,y:50)
            
                }
                Image("팽귄가족")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .offset(x:20 ,y:140)
                }
                                   
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

