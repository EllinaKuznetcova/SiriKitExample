//
//  Person.swift
//  SiriKitExample
//
//  Created by Ellina Kuznecova on 19.11.16.
//  Copyright © 2016 Ellina Kuznetcova. All rights reserved.
//

import Foundation

class Contact {
    var name: String = ""
    var messages: [Message] = []
    
    init(name: String, messages: [Message]) {
        self.name = name
        self.messages = messages
    }
    
    class func createData() -> [Contact] {
        let messages = ["Hey", "How are you?"].map({Message(text: $0)})
        
        return ["Vasya", "Vova", "Katya"].map({Contact(name: $0, messages: messages)})
    }
}

class Message {
    var text: String = ""
    
    init(text: String) {
        self.text = text
    }
}
