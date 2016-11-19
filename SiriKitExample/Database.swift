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
        if let result = UserDefaults.standard.object(forKey: "data") as? [Contact] {
            return result
        }
        else {
            let messages = ["Hey", "How are you?"].map({Message(text: $0)})
            let result =  ["Vasya", "Vova", "Katya"].map({Contact(name: $0, messages: messages)})
            UserDefaults.standard.set(result, forKey: "data")
            UserDefaults.standard.synchronize()
            return result
        }
    }
}

class Message {
    var text: String = ""
    
    init(text: String) {
        self.text = text
    }
}
