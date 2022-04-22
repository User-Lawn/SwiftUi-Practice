/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct SymbolGrid: View {

    @State private var isAddingSymbol = false
    @State private var isEditing = false

    private static let initialColumns = 3
    @State private var selectedSymbolName: String?
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    //symbolNames라는 변수를 사용하여 SymbolGrid를 설정합니다. @State로 표시하면 SwiftUI가 값의 저장소를 관리합니다. 이 상태 값이 변경될 때마다 SwiftUI는 값(이 경우 그리드)을 사용하여 모든 보기를 업데이트합니다.
    @State private var symbolNames = [
        "tshirt",
        "eyes",
        "eyebrow",
        "nose",
        "mustache",
        "mouth",
        "eyeglasses",
        "facemask",
        "brain.head.profile",
        "brain",
        "icloud",
        "theatermasks.fill",
    ]
    
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }

    var body: some View {
        VStack {
            if isEditing {
                Stepper(columnsText, value: $numColumns, in: 1...6, step: 1) { _ in
                    withAnimation { gridColumns = Array(repeating: GridItem(.flexible()), count: numColumns) }
                }
                .padding()
            }

            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    //문자열을 반복해서 그리드를 채웁니다.
                    ForEach(symbolNames, id: \.self) { name in
                        NavigationLink(destination: ItemDetail(symbolName: name)) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: name)
                                    .resizable()
                                    .scaledToFit()
                                    .symbolRenderingMode(.hierarchical)
                                    .foregroundColor(.accentColor)
                                    .ignoresSafeArea(.container, edges: .bottom)
                                    .cornerRadius(8)
                                
                                if isEditing {
                                    Button {
                                        guard let index = symbolNames.firstIndex(of: name) else { return }
                                        withAnimation {
                                            _ = symbolNames.remove(at: index)
                                        }
                                    } label: {
                                        Image(systemName: "xmark.square.fill")
                                                    .font(Font.title)
                                                    .symbolRenderingMode(.palette)
                                                    .foregroundStyle(.white, Color.red)
                                    }
                                    .offset(x: 7, y: -7)
                                }
                            }
                            .padding()
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .navigationBarTitle("My Symbols")
        .navigationBarTitleDisplayMode(.inline)
        //isAddingSymbol이 true일 때 시트를 표시하고 해당 시트는 SymbolPicker 보기를 표시합니다.
        .sheet(isPresented: $isAddingSymbol, onDismiss: addSymbol) {
            SymbolPicker(name: $selectedSymbolName)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(isEditing ? "Done" : "Edit") {
                    withAnimation { isEditing.toggle() }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingSymbol = true
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(isEditing)
            }
        }

    }
    
    func addSymbol() {
        guard let name = selectedSymbolName else { return }
        withAnimation {
            symbolNames.insert(name, at: 0)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolGrid()
    }
}
