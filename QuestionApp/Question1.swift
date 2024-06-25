//
//  Question1.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question1: View {
    @State private var message = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("After Jesus fed 5,000 people, how many baskets of food were left over?")
                    .font(.title)
                    .padding(.top, 50.0)
                VStack {
                    Button("15") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("7") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("12") {
                        message = "Correct"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("8") {
                        message = "Incorrect"
                        
                    }
                    .font(.title)
                    .padding()
                    
                    Text("\(message)")
                    
                }
            }
            .padding()
            Spacer()
            NavigationLink(destination: Question2()) {
                Text("Next Question")
            }
        }
    }
}

#Preview {
    Question1()
}
