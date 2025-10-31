//
//  Question3.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question3: View {
    @Binding var score: Int
    @State private var questionAnswered = false
    @State private var answerCorrect = false
    var body: some View {
        NavigationStack {
            ZStack {
                Image("blank bg")
                VStack {
                    Text("Who is considered the 13th apostle to replace Judas Iscariot? ")
                        .frame(maxWidth: 350)
                        .font(.title)
                        .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                        .padding(.top, 50.0)
                    VStack {
                        Button("Barnabas") {
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                    
                        Button("Cornelius") {
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("Ryan") {
                            questionAnswered = true
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        Button("Matthias") {
                            questionAnswered = true
                            answerCorrect = true
                            score += 1
                                
                        }
                        .font(.title)
                        .padding()
                        .disabled(questionAnswered)
                        
                        if questionAnswered {
                            Text(answerCorrect ? "Correct!" : "Incorrect, the correct is Matthias")
                        }

                        
                    }
                    .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                    NavigationLink(destination: Congrats(score: $score)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .fill(Color(red: 190.0/255.0, green: 168.0/255.0, blue: 170.0/255.0))
                                .frame(width: 200.0, height: 50.0)
                            Text("See Results")
                                .foregroundStyle(Color.black)
                            
                        }
                    }
                    //take user to congrats page
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    Question3(score: .constant(0))
}
