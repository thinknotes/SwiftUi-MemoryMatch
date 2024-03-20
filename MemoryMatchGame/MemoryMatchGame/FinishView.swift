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
                //Creates custom background using circles and offset. Offset is needed to make circles show in a certin way
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
                
                
                Text("😃") //Displays emoji
                    .font(.system(size: 150))
                    .offset(y: -190)
                
                
                
                Text("Great job!") //Finsih text
                    .offset(y: -70)
                    .font(.custom("Assistant-Regular", size: 50)) //Custom font
                
                //Navigates to game view when user clicks the button and hides back button so the user can not go back.
                NavigationLink(destination: StartView().navigationBarBackButtonHidden(true), label: {
                            Text("Start")
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 50)
                                .font(.custom("Assistant-Regular", size: 50))
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding()
                                
                })
        
                
            }
        }
    }
}

#Preview {
    FinishView()
}
