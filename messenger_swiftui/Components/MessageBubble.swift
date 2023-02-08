//
//  MessageBubble.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
       @State private var showTime = false
       
       var body: some View {
           VStack(alignment: message.received ? .leading : .trailing) {
               HStack {
                   Text(message.text)
                       .padding()
                       .background(message.received ? .blue : .yellow)
                       .cornerRadius(15)
               }
               .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
               .onTapGesture {
                   showTime.toggle()
               }
               
               if showTime {
                   Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                       .font(.caption2)
                       .foregroundColor(.gray)
                       .padding(message.received ? .leading : .trailing, 25)
               }
           }
           .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
           .padding(message.received ? .leading : .trailing)
       }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "123",  text: "Longon is the capital of Great Britain", received: false, timestamp: Date()))
    }
}
