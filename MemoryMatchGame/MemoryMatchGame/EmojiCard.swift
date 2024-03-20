//
//  EmojiCard.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/13/24.
//

import SwiftUI

struct EmojiCard: View {

    
      var isFliped: Bool //store fliped value
      var emoji: String //Displays emoji
   
    var body: some View {
        ZStack { //
          
            Rectangle()  //Displays Rectangle shaped
                .fill(isFliped ? Color.clear : Color.blue) //sets the baclkground color of blue when nothing has happend and clear when the emoji displays
                .frame(width: 70, height: 70)
                .cornerRadius(10) //Adds a corner radius of 10
                
//                .background(Color.blue)
            
                   
            if isFliped { //If fliped is true
                    Text(emoji) //Displays emoji
                        .frame(width: 70, height: 70)
                        .padding()
                        .font(.title)
                
                
                        
            }
                       
        }

    }
            
}

    


#Preview {
    EmojiCard(isFliped: false, emoji: "")
}
