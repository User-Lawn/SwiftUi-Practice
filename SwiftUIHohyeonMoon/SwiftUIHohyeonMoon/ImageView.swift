//
//  ImageView.swift
//  SwiftUIHohyeonMoon
//
//  Created by Jun.Mac on 2022/04/12.
//

import SwiftUI

struct ImageView: View {
    
    var body: some View {
        
        Image(systemName: "gift.fill")
            
            
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}


//var body: some View {
//    Image("image-name")
//}
//이번에 새로 내장된 ‘SF Symbols‘ 아이콘을 사용하기 위해서는 다음과 같이 하면 됩니다.
//
//Image(systemName: "circle")
//SwiftUI에서 UIImage를 통해 이미지를 불러오려면, 다음과 같이 하면 됩니다.
//
//guard let img = UIImage(named: "image-name") else {
//    fatalError("Fail to load image")
//}
//
//return Image(uiImage: img)
//위에서 사용했던 내장된 아이콘을 사용하면, 이미지의 색상도 변경할 수 있습니다.
//
//Image(systemName: "circle")
//    .foregroundColor(.blue)
//Image 크기 조절
//SwiftUI에서 이미지의 크기를 조절하기 위해서 resizable은 필수에 가깝습니다.
//
//Image("image-name")
//    .resizable()
//정해진 사이즈에 이미지를 채우는 방식은, 다음과 같이 지정할 수 있습니다.
//
//Image("image-name")
//    .resizable()
//    .aspectRatio(contentMode: .fill)
//그라데이션 구현
//다음과 같이 SwiftUI에서는 이미지에 그라데이션 효과를 줄 수도 있습니다.
//
//Text("SwiftUI tutorial by Hohyeon")
//    .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
//도형 그리기
//SwiftUI에서는 사각형을 다음과 같이 그릴 수도 있고,
//
//Rectangle()
//    .fill(Color.blue)
//    .frame(width: 250, height: 250)
//원을 그릴 수도 있습니다.
//
//Circle()
//    .fill(Color.blue)
//    .frame(width: 250, height: 250)
//배경 이미지 사용
//배경으로 Image를 사용하기 위해서는 다음과 같이 하면 됩니다.
//
//Text("SwiftUI tutorial by Hohyeon")
//    .background(
//        Image("image-name")
//            .resizable()
//            .frame(width: 100, height: 100))
