/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct StoryPageView: View {
    //스토리를 표시하기 위해 Story 유형의 인스턴스를 사용합니다.
    let story: Story
    let pageIndex: Int

    var body: some View {
        VStack {
            ScrollView {
                //현재 페이지의 스토리 텍스트를 표기합니다.
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                    Text(choice.text)
                    //텍스트를 정렬합니다. 텍스트가 선행 가장자리에 맞춰집니다.
                        .multilineTextAlignment(.leading)
                    //frame은 텍스트를 보이지 않는 프레임으로 감쌉니다. maxWidth를 사용하면 프레임이 허용되는 만큼 확장하고 alignment: .leading은 프레임이 허용하는 선행 가장자리에 텍스틀 위치합니다.
                        .frame(maxWidth: .infinity, alignment: .leading)
                    //.padding 수정자는 링크 내용 주위에 공간을 추가합니다. .background 수정자는 25% 불투명도의 회색을 적용하고 .cornerRadius 수정자는 모서리를 둥글게 만듭니다.
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        //네비게이션 타이틀을 만들고 스타일을 지정합니다.
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NonlinearStory_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
