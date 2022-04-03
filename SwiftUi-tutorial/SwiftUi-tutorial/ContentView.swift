//
//  ContentView.swift
//  SwiftUi-tutorial
//
//  Created by Jun.Mac on 2022/04/03.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                MyVstacView()
                MyVstacView()
                MyVstacView()
           
                }.padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.green : Color .yellow).onTapGesture {
                    print("Hstac이 선택되었다.")
                    // toggle true이면 false로 false이면 true로 알아서 바꿔줌
                    withAnimation {self.isActivated.toggle()}
                }
        
            NavigationLink(destination: MyTextView()) {
                Text("네비게이션")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }
            
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
