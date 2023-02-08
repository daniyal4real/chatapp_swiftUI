//
//  TitleRow.swift
//  messenger_swiftui
//
//  Created by Daniyal Ganiuly on 08.02.2023.
//

import SwiftUI

struct TitleRow: View {
    
    
    var imageUrl = URL(string: "https://www.apple.com/leadership/images/bio/tim-cook_image.png.og.png?1675448726218")
    
    var name = "Tim Cook"
    
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(.green)
    }
}
