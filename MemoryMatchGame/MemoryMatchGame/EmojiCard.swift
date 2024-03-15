//
//  EmojiCard.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/13/24.
//

import SwiftUI

struct EmojiCard: View {

    
      var isFliped: Bool
      var emoji: String
   
    var body: some View {
        ZStack {
          
            Rectangle()
                .fill(isFliped ? Color.clear : Color.blue)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                
//                .background(Color.blue)
            
                   
            if isFliped {
//                ForEach(emoji, id: \.self) { emojiString in
                    Text(emoji)
                        .frame(width: 70, height: 70)
                        .padding()
                        .font(.title)
                
                
                        
//                }
            }
                       
        }

    }
            
}

    


#Preview {
    EmojiCard(isFliped: false, emoji: "")
}
