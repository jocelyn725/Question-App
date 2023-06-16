//
//  LastPage.swift
//  Question App
//
//  Created by Jocelyn Paek on 6/9/23.
//

import SwiftUI

struct LastPage: View {
    var body: some View {
        NavigationStack {
            ZStack{
                    Color("neutral")
                        .ignoresSafeArea()
                VStack{
                    
            Text("Thanks for playing! You're amazing <3")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .padding(2)
                .overlay(
                RoundedRectangle(cornerRadius: 5)
                .stroke(.black, lineWidth: 4)
                )
            
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                        Text("Click me to go back to the first question")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 170, height: 60, alignment: .center)
                            .background(Color("mint"))
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}
struct LastPage_Previews: PreviewProvider {
    static var previews: some View {
        LastPage()
    }
}
