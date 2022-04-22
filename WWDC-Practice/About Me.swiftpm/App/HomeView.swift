/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
//앱을 시작할때 가장 먼저 보게됩니다.
struct HomeView: View {
    
    var body: some View {
        //화면 위하래 수직을 구현합니다.
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            //데이터 파일에서 수정한 이미지를 표시합니다.
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)

            Text(information.name)
                .font(.title)
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
