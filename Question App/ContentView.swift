//
//  ContentView.swift
//  Question App
//
//  Created by Jocelyn Paek on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var response = Text("")
    var body: some View {
        
        NavigationStack {
            ZStack{
                    Color("neutral")
                        .ignoresSafeArea()
                
                
                VStack {
                    Text("What is your favorite color? ✏️")
                        .fontWeight(.bold)
                        .padding()
                    
                    Button("a) Red") {
                        response = Text("❤️")
                    }
                    .buttonStyle(.bordered)
                    .tint(.brown)
                    
                    .padding(2.0)
                    Button("b) Pink") {
                        response = Text("🩷")
                    }
                    .buttonStyle(.bordered)
                    .tint(.brown)
                    
                    .padding(2.0)
                    Button("c) Green") {
                        response = Text("💚")
                    }
                    .buttonStyle(.bordered)
                    .tint(.brown)
                    
                    .padding(2.0)
                    Button("d) Blue") {
                        response = Text("💙")
                            
                    }
                    .buttonStyle(.bordered)
                    .tint(.brown)
                    
                    .padding(2.0)
                    
                    Text("\(response)")
                    
                        .toolbar{
                            NavigationLink(destination:
                                            Secondquestionview()) {
                                Text("Next Question")
                                    .foregroundColor(Color.black)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

