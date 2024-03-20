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
                    //Shows a custom emjoi background
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    Spacer()
                    
                    VStack {
                        //Shows game text when apps is lanuch
                        Text("EmojiMatch")
                            .multilineTextAlignment(.center)
                            .frame(height: 100)
                            .font(.custom("Assistant-Regular", size: 50)) //Custom font
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(10)
                            .padding(.all)
                           
                            
                        
                        
                        Spacer()
                            
                        //Shows the start view and hides a the back button so the user can not go back
                        NavigationLink(destination: StartView() .navigationBarBackButtonHidden(true), label:  {
                            Text("Start")
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 50)
                                .font(.custom("Assistant-Light", size: 50)) //Custom font
                                .foregroundColor(.white)
                                .background(Color.blue)
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
