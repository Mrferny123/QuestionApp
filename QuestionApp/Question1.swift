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
                    .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                    
                    NavigationLink(destination: Question2()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .fill(Color(red: 190.0/255.0, green: 168.0/255.0, blue: 170.0/255.0))
                                .frame(width: 200.0, height: 55.0)
                            Text("Next Question")
                                .foregroundStyle(Color.black)
                        }
                    }
                }
            .padding()
            }
        }
    }
}

#Preview {
    Question1()
}
