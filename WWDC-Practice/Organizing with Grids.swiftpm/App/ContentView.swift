/*
See the License.txt file for this sample’s licensing information.
*/


import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    //변수 앞에 @State를 추가하여 값에 대한 저장소를 관리하도록 합니다. 값이 변경되면 SwiftUI는 해당 값을 사용하는 뷰의 모든 부분을 업데이트합니다.
    @State private var selectedColor = Color.gray
    //allcolors 변수를 사용해 색상 값 배열을 저장합니다.
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]

    var body: some View {
        VStack {
            Text("Selected Color")
                .font(.body)
                .fontWeight(.semibold)
                //텍스트 색은 selectedColor를 사용합니다. selectedColor는 상태 변수이기 때문에 상태가 변경될 때마다 SwiftUI는 이 텍스트의 색상을 변경합니다.
                .foregroundColor(selectedColor)
                .padding(10)
            
            ScrollView {
                //그리드 보기를 만듭니다.
                LazyVGrid(columns: columnLayout) {
                    //LazyVGrid 내에서 표시할 그리드의 각 항목을 정의합니다. ForEach 루프를 사용하여 allColors 배열을 반복합니다.
                    ForEach(allColors, id: \.description) { color in
                        Button {
                            selectedColor = color
                        } label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: ContentMode.fit)
                                .foregroundColor(color)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding(10)
    }
}
