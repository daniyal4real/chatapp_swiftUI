//
//  Message.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import Foundation


struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
