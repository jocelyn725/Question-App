//
//  ThirdQuestionView.swift
//  Question App
//
//  Created by Jocelyn Paek on 6/9/23.
//

import SwiftUI

struct ThirdQuestionView: View {
    @State private var response: String = ""
    var body: some View {
        
        NavigationStack {
            ZStack{
                    Color("neutral")
                        .ignoresSafeArea()
            VStack {
                Text("Who's your favorite disney princess? 🏷️ ")
                    .padding()
                Button("Cinderella") {
                    response = "👸💃🕛👠🎃"
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("Ariel") {
                    response = "🧜🏻‍♀️🐠🦞"
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("Belle") {
                    response = "👸🌹📖"
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("Elsa") {
                    response = "👩🏻‍🦳❄️⛄️"
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                Text("\(response)")
                
            }
            .toolbar{
                NavigationLink(destination:LastPage()) {
                    Text("Next")
                        .foregroundColor(Color.black)
                   }
                }
            }
        }
    }
}
    
struct ThirdQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestionView()
    }
}
