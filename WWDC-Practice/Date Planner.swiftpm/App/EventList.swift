/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
//그룹화된 이벤트 목록을 만듭니다.
struct EventList: View {
    //EventData의 인스턴스를 전달하여 모든 하위 보기에 액세스할 수 있도록 합니다. 모든 이벤트 데이터에 액세스할 수 있습니다.
    @EnvironmentObject var eventData: EventData
    @State private var isAddingNewEvent = false
    @State private var newEvent = Event()
    
    var body: some View {
        
        List {
            //ForEach문을 사용해 리스트를 반복합니다.
            ForEach(Period.allCases) { period in
                //현재 기간에 하나 이상의 이벤트가 포함되어 있는지 확인하고, 그렇지 않으면 해당 이벤트에 대한 데이터를 표시하지 않습니다.
                if !eventData.sortedEvents(period: period).isEmpty {
                    Section(content: {
                        ForEach(eventData.sortedEvents(period: period)) { $event in
                            //ForEach 내에서 해당 기간의 각 이벤트에 대한 EventRow 보기를 만듭니다.
                            NavigationLink {
                                EventEditor(event: $event)
                            } label: {
                                EventRow(event: event)
                            }
                            //이벤트를 스와이프하고 삭제할 수 있습니다.
                            .swipeActions {
                                Button(role: .destructive) {
                                    eventData.delete(event)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }, header: {
                        Text(period.name)
                            .font(.callout)
                            .foregroundColor(.secondary)
                            .fontWeight(.bold)
                    })
                }
            }
        }
        .navigationTitle("Date Planner")
        .toolbar {
            ToolbarItem {
                Button {
                    newEvent = Event()
                    isAddingNewEvent = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isAddingNewEvent) {
            NavigationView {
                EventEditor(event: $newEvent, isNew: true)
            }
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EventList().environmentObject(EventData())

        }
    }
}
