//
//  ContentView.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import SwiftUI

struct ContentView: View {
    var messageArray =  ["Hello", "How  are you?", "Let's go to the movie theater on Sunday at 7 p.m"]
    
    var body: some View {
        VStack {
            VStack {
                
            TitleRow()
            
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "1234", text: text, received: true, timestamp: Date()))
                }
            }
            .background(.white)
            .padding(.top, 10)
                
            MessageField()
                
            }
            .background(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
