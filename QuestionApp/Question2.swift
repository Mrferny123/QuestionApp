//
//  Question2.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question2: View {
    @Binding var score: Int
    @State private var questionAnswered = false
    @State private var answerCorrect = false
    var body: some View {
        NavigationStack {
            ZStack {
                Image("blank bg")
                VStack {
                    Text("How many days was Lazarus dead before Jesus came to visit?")
                        .frame(maxWidth: 350)
                        .font(.title)
                        .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding(.top, 50.0)
                    VStack {
                        //keep track of what user got wrong through a variable
                        //will have to let user only respond one time?
                        Button("2") {
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("4") {
                            questionAnswered = true
                            answerCorrect = true
                            score += 1 
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("3") {
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
                        
                        if questionAnswered {
                            Text(answerCorrect ? "Correct!" : "Incorrect, the correct is 4")
                        }
                        
                    }
                    .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                    
                    NavigationLink(destination: Question3(score: $score)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .fill(Color(red: 190.0/255.0, green: 168.0/255.0, blue: 170.0/255.0))
                                .frame(width: 200.0, height: 55.0)
                            Text("Next Question")
                                .foregroundStyle(Color.black)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    Question2(score: .constant(0))
}
