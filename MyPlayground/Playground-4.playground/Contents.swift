//import UIKit
//
//struct MyStructure {
//    var message = "Hello"
//
//    func myFuanction() {
//        print(message)
//    }
//}
//
//var a:MyStructure = MyStructure()
//a.message = "Hi"
//a.myFuanction()
//
//var b = MyStructure()
//b.message = "world"
//print(b.message)

struct DatabaseManager {
    
    private var serverName = "Server 1"
    
    private func saveData(data:String) -> Bool {
        // This code saves the data and returns a boolean result
        return true
    }
    
    
}

struct ChatView {
    
    var message = "Hello"
    
    func sendChat() {
        
        // Save the chat message
        var db = DatabaseManager()
        
        let successful = db.saveData(data: message)
        
        //check the successful boolean value, if unsuccessful, show alert to user
    }
}
