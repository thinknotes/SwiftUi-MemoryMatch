//
//  ContentView.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { size in
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
               
                
            }
            
            Spacer()
       
            
            
                
            Text("EmojiMatch")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 50)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(5)
                    .padding()
                    .offset(y: 100)
                    
                    
                 
                   
                    
            
         
            
            
            
                Text("Start")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 50)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(5)
                    .padding()
                    .offset(y: 500)
            
            
        }
        
        
        
    }
        
}

#Preview {
    ContentView()
}
