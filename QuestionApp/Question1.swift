//
//  Question1.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question1: View {
    @Binding var score: Int
    @State private var questionAnswered = false
    @State private var answerCorrect = false
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
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("7") {
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("12") {
                            questionAnswered = true
                            answerCorrect = true
                            score += 1
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("8") {
                            questionAnswered = true
                            
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        if questionAnswered {
                            Text(answerCorrect ? "Correct!" : "Wrong, the correct answer is 12")
                        }
                        
                    }
                    .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                    
                    NavigationLink(destination: Question2(score: $score)) {
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
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Question1(score: .constant(0))
}
