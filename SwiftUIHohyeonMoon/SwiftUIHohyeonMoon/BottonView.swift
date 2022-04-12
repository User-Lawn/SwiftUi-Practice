//
//  BottonView.swift
//  SwiftUIHohyeonMoon
//
//  Created by Jun.Mac on 2022/04/12.
//

import SwiftUI

struct BottonView : View {
    @State var showGreeting = true
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Welcome")
            }.padding()
            if showGreeting {
                Text("Hello Hohyeon")
            }
        }
    }
}


struct BottonView_Previews: PreviewProvider {
    static var previews: some View {
        BottonView()
    }
}

//SwiftUI에서 일반 버튼을 만들기 위해서는 이렇게 하면 됩니다. Button 다음에 action과 display 칸을 마련합니다.
//
//Button(action: {
//    // action
//}) {
//    // display
//}
//Button은 이렇게 사용될 수 있습니다. body 부분의 Button을 보면, 버튼을 누르면 showDetails의 값을 토글하고 버튼 자체는 Text가 되는 것입니다.
//
//struct ContentView : View {
//    @State var showDetails = false
//    var body: some View {
//        VStack {
//            Button(action: {
//                self.showDetails.toggle()
//            }) {
//                Text("Show details")
//            }
//            if showDetails {
//                Text("You should see me in a crown")
//                    .font(.largeTitle)
//                    .lineLimit(nil)
//            }
//        }
//    }
//}
//Navigation Link
//나중에 다룰 내용이긴 하지만, 내비게이션 뷰가 있고, SwiftUI의 내비게이션 뷰를 push 하고 싶다면 Navigation Link를 사용하면 됩니다. 예를 들어, 이렇게 디테일 뷰가 있고,
//
//struct DetailView: View {
//    var body: some View {
//        Text("Detail")
//    }
//}
//이렇게 콘텐츠 뷰가 있으면, 내비게이션 뷰를 이렇게 NavigationLink를 통해 push 할 수 있습니다.
//
//struct ContentView : View {
//    var body: some View {
//        NavigationView {
//            Text("Hi")
//            .navigationBarTitle(Text("Intro"))
//            .navigationBarItems(trailing:
//                NavigationLink(destination: DetailView()) {
//                    Image(systemName: "arrowtriangle.right.circle.fill").resizable()
//                        .frame(width: 25, height: 25, alignment: .trailing)
//                }
//            )
//        }
//    }
//}
//토글 스위치
//UIKit의 UISwitch의 역할을 SwiftUI에서는 Toggle이 합니다.
//
//이렇게 코드가 있을 때, Toggle(isOn: )을 사용하면 showGreeting의 값은 토글 스위치가 눌릴 때마다 값이 변경되고, 그에 해당하는 코드가 실행됩니다.
//
//struct ContentView : View {
//    @State var showGreeting = true
//    var body: some View {
//        VStack {
//            Toggle(isOn: $showGreeting) {
//                Text("Welcome")
//            }.padding()
//            if showGreeting {
//                Text("Hello Hohyeon")
//            }
//        }
//    }
//}
