/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

@main
struct DatePlannerApp: App {
    @StateObject private var eventData = EventData()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                //EventList는 홈 보기이며 앱이 시작되면 보여지는 첫 페이지 입니다.
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)

        }
    }
}
