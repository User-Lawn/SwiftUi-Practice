import UIKit

struct ChatView {
    
    // Properties
    var message:String = ""
    var messageWithPrefix:String {
        return "Chris says: " + message
    }
    
    // View Code for this screen
    
    // Methods
    func sendChat() {
        
        
        // Code to send chat message
        print(messageWithPrefix)
    }
    
    func deleteChat() {
        print(messageWithPrefix)
    }
}
