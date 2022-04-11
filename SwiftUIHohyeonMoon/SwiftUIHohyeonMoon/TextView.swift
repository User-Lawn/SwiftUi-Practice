//
//  TextView.swift
//  SwiftUIHohyeonMoon
//
//  Created by Jun.Mac on 2022/04/11.
//


import SwiftUI

struct TextView: View {
    
    var body: some View {
        
        Text("Hello")
            
            
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}


//Text("Hello World")
//그리고 다음과 같이 줄 개수를 제한할 수 있습니다.
//
//Text("Hello World")
//    .lineLimit(3)
//줄의 개수를 제한하고 싶지 않다면, 숫자 대신 nil 값을 넣어줍니다.
//
//Text("Hello World")
//    .lineLimit(nil)
//긴 문장에 대해서는 다음과 같이 truncationMode를 사용해 일부를 생략할수도 있습니다.
//
//var body: some View {
//    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
//        .truncationMode(.middle)
//}
//Text 폰트, 색상, 줄 간격
//Text의 폰트는 font를 통해 변경할 수 있고
//
//Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
//    .lineLimit(nil)
//    .font(.largeTitle)
//여러 줄에 대한 정렬은 multilineTextAlignment를 통해 제어할 수 있습니다.
//
//Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
//    .lineLimit(nil)
//    .font(.largeTitle)
//    .multilineTextAlignment(.center)
//Text의 색상을 변경하기 위해서는 foregroundColor를 사용합니다.
//
//Text("Lorem ipsum")
//    .foregroundColor(Color.red)
//Text의 음영색, 배경색을 변경하고 싶다면 background를 사용합니다.
//
//Text("Lorem ipsum")
//    .background(Color.yellow)
//    .foregroundColor(Color.red)
//Text의 줄 간격은 lineSpacing을 다음과 같이 사용하면 조절할 수 있습니다.
//
//Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
//    .lineLimit(nil)
//    .font(.largeTitle)
//    .lineSpacing(50)
//Text 뷰의 텍스트 포맷 설정
//Text 뷰 안에 표시되는 텍스트의 포맷을 설정하기 위해서는 formatter를 사용하면 되는데요. 밑의 예시는 날짜 포맷으로 Text를 표기하는 예시입니다.
//
//struct ContentView: View {
//    static let taskDateFormat: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateStyle = .long
//        return formatter
//    }()
//    var dueDate = Date()
//    var body: some View {
//        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
//    }
//}
