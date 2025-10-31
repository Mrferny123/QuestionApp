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
            ZStack {
                Image("blank bg")
                VStack {
                    Text("After Jesus fed 5,000 people, how many baskets of food were left over?")
                        .frame(maxWidth: 350)
                        .font(.title)
                        .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding(.top, 50.0)
                    VStack {
                        Button("15") {
                            message = "Incorrect"
                        }
                        .font(.title)
                        .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding()
                        
                        Button("7") {
                            message = "Incorrect"
                        }
                        .font(.title)
                        foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding()
                        
                        Button("12") {
                            message = "Correct"
                        }
                        .font(.title)
                        foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding()
                        
                        Button("8") {
                            message = "Incorrect"
                            
                        }
                        .font(.title)
                        foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding()
                        
                        Text("\(message)")
                        
                    }
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
