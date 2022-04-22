/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct StoryView: View {

    var body: some View {
        //각 스토리 페이지를 탐색하기 위해 사용합니다. 독자가 NavigationLink를 선택할때 다음 보기로 전환 합니다.
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
