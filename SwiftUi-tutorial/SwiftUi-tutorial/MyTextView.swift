//
//  MyTextView.swift
//  SwiftUi-tutorial
//
//  Created by Jun.Mac on 2022/04/03.
//

import SwiftUI
struct MyTextView: View {
   
    @State private var index: Int = 0
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.orange,
    ]

    var body: some View{
        VStack{
            Spacer()
            
            Text("배경 아이템 인덱스\(self.index)")
                .font(.system(size: 30))

            Spacer()
            
        }.background(backgroundColors[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                print("배경아이템이 클릭 되었다.")
                
                if(self.index == self.backgroundColors.count - 1){
                    
                    self.index = 0
                    
                } else {
                    
                    self.index += 1
                    
            }
                
    }
}
}
struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}

