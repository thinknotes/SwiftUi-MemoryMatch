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
    
    @State var emojis = ["😀", "😀" ,"😁", "😁", "😂", "😂", "🤣", "🤣", "😃", "😃", "😄", "😄",]
    
    @State private var pickOne: Int = -1
    
    @State private var pickTwo: Int = -1
    
    @State private var score: Int = 0
    
    @State private var gameFinished: Bool = false
    

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
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
          
//            VStack {
//                
//                ZStack {
//                        //                Spacer()
//                    
                    Text("Current Score: \(currentScore)")
                        .bold()
                        .font(.title)
                        .offset(y: -200)
//
//                   
//                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<12) { index in
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(10)
                                .foregroundColor(.blue)
                        }
                    }
                }
        
        
        
//
//
//
        

        }
        
//
    }


#Preview {
    StartView()
}
