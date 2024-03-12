//
//  ContentView.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                ZStack {
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    Spacer()
                    
                    VStack {
                        Text("EmojiMatch")
                            .multilineTextAlignment(.center)
                            .frame(height: 100)
                            .font(.system(size: 50, design: .rounded))
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .padding(.all)
                           
                            
                        
                        
                        Spacer()
                            
                        
                        NavigationLink(destination: StartView() .navigationBarBackButtonHidden(true), label:  {
                            Text("Start")
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 50)
                                .font(.system(size: 50, design: .rounded))
                                .foregroundColor(.white)
                                .background(Color.blue) // Use Color instead of .blue
                                .cornerRadius(10)
                                .padding()
                               
                             
                        })
                        
                        
                    }
                    .padding()
                    
                }
                
             
                
                
                
            
                
                
            
                
                
                
                
                
             
             
                
               
                    
                
               
                
                
                
                
                
                
            }
            
            
        }
        
        
    }
        


#Preview {
    ContentView()
}
