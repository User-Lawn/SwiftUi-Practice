/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

@main
struct DatePlannerApp: App {
    //앱은 변수 eventData를 사용하여 데이터를 저장합니다. @StateObject 속성 래퍼로 정의되어 관찰 가능한 개체인 EventData의 인스턴스를 만듭니다. 이 객체는 관찰 가능하기 때문에 SwiftUI는 값에 대한 변경 사항을 추적하기 위해 이를 감시합니다. 데이터가 변경될 때마다 SwiftUI는 데이터를 사용(또는 관찰)하는 모든 뷰를 자동으로 업데이트합니다.
    @StateObject private var eventData = EventData()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                //EventList는 홈 보기이며 앱이 시작되면 보여지는 첫 페이지 입니다.
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            //eventData를 사용할 수 있도록 하려면 .environmentObject 수정자를 사용하고 eventData 인스턴스를 전달합니다. 이제 탐색 보기의 모든 하위 보기(및 해당 하위 보기)에서 이 데이터를 사용할 수 있습니다.
            .environmentObject(eventData)

        }
    }
}
