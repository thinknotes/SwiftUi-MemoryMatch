//
//  StartView.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/12/24.
//

import SwiftUI

struct StartView: View {
    
    @State private var currentScore: Int = 0 //Keeps track of score
    
    @State var cardsFlipped: [Bool] = Array(repeating: false, count: 16) //keeps track of cards fliped
    
    @State var emojis = ["😀", "😀" ,"😁", "😁", "😂", "😂", "🤣", "🤣", "😃", "😃", "😄", "😄",].shuffled() //The emojis which the game uses
     
    @State private var pickOne: Int = -1 //Card one index
    
    @State private var pickTwo: Int = -1 //Card two index
    
    @State private var score: Int = 0
    
    @State private var gameFinished: Bool = false
    

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) //Used to build gird
    
    @State private var isFliped: Bool = false //flips crard
    
   
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect() //Auto filps card after two seconds if the match is wrong
    
    @State private var count: Int = 0
    
  
    
    var body: some View {
        
        NavigationView {
            //Background Code
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
              
    //                    //Displays current score
                        Text("Current Score: \(currentScore)")
                            .bold()
                            .font(.custom("Assistant-Regular", size: 30)) //Custom font
                            .offset(y: -300)
    //
    //                   
    //                    
                //
                        LazyVGrid(columns: columns) {
                            //List all the emjois and creats and index
                            ForEach(emojis.indices, id: \.self) { index in
                                
                                
                                Button(action: {
                                    buttonTaped(index)
                                //Run the game logic
                                    
                                }, label: {
                                    withAnimation {
                                        
                                        //Check the fliped index and emoji index
                                        EmojiCard(isFliped: cardsFlipped[index], emoji: emojis[index])
                                            .font(.title)
                                    }
                                })

                                
                                
                                  
                               
                            }
                           
                            //if current score equals six. Display plays two option next and retry. Next will prompt the finish screen while retry will reset the game to zero and shuffle the emojis.
                            if currentScore >= 6 {
                                
                                HStack {
                                    
                                    Button(action: {
                                    
                                    }, label: {
                                        //Shows finsh view
                                        NavigationLink(destination: FinishView().navigationBarBackButtonHidden(true), label: {
                                           Text("Next")
                                               .multilineTextAlignment(.center)
                                               .frame(width: 150, height: 50)
                                               .font(.custom("Assistant-Regular", size: 50))
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
                                        currentScore = 0 //Sets the score to zero
                                        emojis.shuffle() //Make sure that emojis are shuffled
                                    }, label: {
                                        NavigationLink(destination: StartView().navigationBarBackButtonHidden(true), label: {
                                            Text("Retry")
                                                .multilineTextAlignment(.center)
                                                .frame(width: 150, height: 50)
                                                .font(.custom("Assistant-Regular", size: 50))
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
                               Text("") //If score is not equal to six then display nothing
                            }
                        }
                
               
            }
        }
        
        }

    func buttonTaped(_ index: Int) {
      
       
        //Game logic
        
        //Checks if pickOne or pickTwo index are -1 then sets the cardFliped index to true and updates the index. Once card two has been picked will run the check pairs function to check if it is the same.
        if pickOne == -1 || pickTwo == -1 {
            
            if pickOne == -1 {
                cardsFlipped[index] = true
                print("DEBUG: Pick 1 Was Taped")
                pickOne = index
            } else {
                print("DEBUG: Pick 2 Was Taped: ")
                pickTwo = index
                cardsFlipped[index] = true
                checkPairs(pickOne, pickTwo)
            }
        }
            
        
        
    }
    
    func checkPairs(_ index1: Int, _ index2: Int) {
        //check if emjoi 1 and emjoi 2 are the same and updates score and resets the index
        print("DEBUG: Both Cards Where Picked")
        if emojis[pickOne] == emojis[pickTwo] {
            currentScore += 1
            
            pickOne = -1
            pickTwo = -1
         
        } else  {
        
            //Create  an timer to check if it has been two seconds, if it has been two seconds then the cards will flip. The index will reset.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                
                print("DEBUG: Card filped")
                cardsFlipped[pickOne] = false
                cardsFlipped[pickTwo] = false
                
                pickOne = -1
                pickTwo = -1
                
            }
            
            
            
            }
        
        
       
            
        }
       
    }
        
//
    


#Preview {
    StartView()
}
