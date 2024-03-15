//
//  StartView.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/12/24.
//

import SwiftUI

struct StartView: View {
    
    @State private var currentScore: Int = 0
    
    @State var cardsFlipped: [Bool] = Array(repeating: false, count: 16)
    
    @State var emojis = ["😀", "😀" ,"😁", "😁", "😂", "😂", "🤣", "🤣", "😃", "😃", "😄", "😄",].shuffled()
    
    @State private var pickOne: Int = -1
    
    @State private var pickTwo: Int = -1
    
    @State private var score: Int = 0
    
    @State private var gameFinished: Bool = false
    

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @State private var isFliped: Bool = false
    
  
    
    var body: some View {
        ZStack {
            Circle()
                .padding()
                .foregroundColor(Color("red"))
                .frame(maxWidth: .infinity)
                .offset(x: -140, y: -300)
////
////            
           Spacer()
////            
            Circle()
                .padding()
                .foregroundColor(Color("green"))
                .frame(maxWidth: .infinity)
                .offset(x: 100, y: 300)
          
//                    
                    Text("Current Score: \(currentScore)")
                        .bold()
                        .font(.title)
                        .offset(y: -300)
//
//                   
//                    
                    LazyVGrid(columns: columns) {
                        ForEach(emojis.indices, id: \.self) { index in
                            
                            
                            Button(action: {
                                buttonTaped(index)
                                
                                
                            }, label: {
                                withAnimation {
                                    
                                    
                                    EmojiCard(isFliped: cardsFlipped[index], emoji: emojis[index])
                                        .font(.title)
                                }
                            })

                            
                            
                              
                           
                        }
                       
                        
                        if currentScore >= 6 {
                            
                            HStack {
                                
                                Button(action: {
                                
                                }, label: {
                                   NavigationLink(destination: FinishView(), label: {
                                       Text("Next")
                                           .multilineTextAlignment(.center)
                                           .frame(width: 100, height: 50)
                                           .font(.system(size: 50, design: .rounded))
                                           .foregroundColor(.white)
                                           .background(Color.blue)
                                           .cornerRadius(10)
                                           .padding()
                                   })
                                    
                                })
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .offset(x: 40)
                                
                                
                                
                                
                                
                            }
                            
                            Spacer()
                            
                            HStack {
                                Button(action: {
                                    print("DEBUG: Retry button pressed")
                                    currentScore += 0
                                    emojis.shuffle()
                                }, label: {
                                    NavigationLink(destination: StartView(), label: {
                                        Text("Retry")
                                            .multilineTextAlignment(.center)
                                            .frame(width: 150, height: 50)
                                            .font(.system(size: 50, design: .rounded))
                                            .foregroundColor(.white)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    })
                                    
                                })
                               
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .offset(x: -40)
                                
                        } else {
                           Text("")
                        }
                    }
            
           
                }
        
        }

    func buttonTaped(_ index: Int) {
      
       
        
        
        if pickOne == -1 || pickTwo == -1 {
          
            if pickOne == -1 {
                cardsFlipped[index] = true
                print("DEBUG: Pick 1 Was Taped")
                pickOne = index
            } else {
                cardsFlipped[index] = true
                print("DEBUG: Pick 2 Was Taped: ")
                pickTwo = index
                checkPairs(pickOne, pickTwo)
            }
            
//            if pickTwo == -1 {
//                print("DEBUG: Pick 2 Was Taped: ")
//                pickTwo = index
//            }
        }
        
        pickOne = -1
        pickTwo = -1
        
        
        
    }
    
    func checkPairs(_ index1: Int, _ index2: Int) {
        print("DEBUG: Both Cards Where Picked")
        if emojis[pickOne] == emojis[pickTwo] {
            currentScore += 1
            
            
        } else  {
            cardsFlipped[pickOne] = false
            cardsFlipped[pickTwo] = false
            
            
        }
    }
        
//
    }


#Preview {
    StartView()
}
