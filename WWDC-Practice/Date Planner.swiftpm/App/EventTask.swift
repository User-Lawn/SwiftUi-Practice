/*
See the License.txt file for this sample’s licensing information.
*/

import Foundation
//작업을 모델링합니다.
struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
