/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
//앱을 실행하면 가장 먼저 보게 되는 화면입니다.
struct ContentView: View {
    //본문 내부에서 앱에 대한 사용자 인터페이스 또는 UI를 만듭니다.
    var body: some View {
        //TabView는 탭이 있는 사용자 인터페이스를 만드는 방법입니다. 탭 보기 내에서 원하는 각 탭 항목을 나열합니다.
        TabView {
            //탭을 만들려면 누군가 탭을 탭할 때 표시할 보기의 인스턴스를 만듭니다.
            HomeView()
            //tabItem 수정자는 레이블, 텍스트 및 이미지 보기만 허용합니다. Button과 같은 다른 유형의 보기를 포함하면 빈 탭 항목이 생성됩니다.
                .tabItem {
                    Label("Home", systemImage: "person")
                }

            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
