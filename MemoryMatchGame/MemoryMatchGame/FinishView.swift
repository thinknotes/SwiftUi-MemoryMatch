//
//  FinishView.swift
//  MemoryMatchGame
//
//  Created by StudentAM on 3/13/24.
//

import SwiftUI

struct FinishView: View {
    var body: some View {
        NavigationView {
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
                
                
                Text("😃")
                    .font(.system(size: 150))
                    .offset(y: -50)
                
                
                
                Text("Great job!")
                    .offset(y: 50)
                    .font(.system(size: 50))
                
                
                NavigationLink(destination: StartView() .navigationBarBackButtonHidden(true), label:  {
                    Text("Start")
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 50)
                        .font(.system(size: 50, design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue) 
                        .cornerRadius(10)
                        .padding()
                        .offset(y: 140)
                    
                    
                })
                
                
            }
        }
    }
}

#Preview {
    FinishView()
}
