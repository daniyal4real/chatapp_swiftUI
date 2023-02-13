//
//  ContentView.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift





struct ContentView: View {
//    var messageArray =  ["Hi"]
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                
            TitleRow()
            
            
                ScrollViewReader { proxy in 
                    ScrollView {
        //                ForEach(messageArray, id: \.self) { text in
        //                    MessageBubble(message: Message(id: "1234", text: text, received: true, timestamp: Date()))
        //                }
                        
                        ForEach(messagesManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            .background(.white)
            .padding(.top, 10)
                
            MessageField()
                    .environmentObject(MessagesManager())
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
