//
//  Second question view.swift
//  Question App
//
//  Created by Jocelyn Paek on 6/9/23.
//

import SwiftUI
struct Secondquestionview: View {
    @State private var response = Text("")
    var body: some View {
        
        NavigationStack {
            ZStack{
                    Color("neutral")
                        .ignoresSafeArea()
                
            VStack {
                Text("How are you feeling today? 🗓️ ")
                    .padding()
                Button("happy") {
                    response = Text("😁")
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("tired") {
                    response = Text("🥱")
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("nervous") {
                    response = Text("😵‍💫")
                }
                .buttonStyle(.bordered)
                .tint(.brown)
                
                .padding(2.0)
                Button("excited") {
                    response = Text("😆")
                }
                .buttonStyle(.bordered)
                .tint(.brown)
            
                
                Text("\(response)")
                
                    .toolbar{
                        NavigationLink(destination:ThirdQuestionView()) {
                            Text("Next Question")
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
        }
    }
    struct Second_question_view_Previews: PreviewProvider {
        static var previews: some View {
            Secondquestionview()
        }
    }
}
