//
//  messenger_swiftuiApp.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import SwiftUI
import Firebase


@main
struct messenger_swiftuiApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
