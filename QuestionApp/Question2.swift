//
//  Question2.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question2: View {
    @State private var message = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("How many days was Lazarus dead before Jesus came to visit?")
                    .font(.title)
                    .padding(.top, 50.0)
                VStack {
                    //keep track of what user got wrong through a variable
                    //will have to let user only respond one time?
                    Button("2") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("4") {
                        message = "Correct"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("3") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("7") {
                        message = "Incorrect"
                        
                    }
                    .font(.title)
                    .padding()
                    
                    Text("\(message)")
                    
                }
            }
            .padding()
            Spacer()
            NavigationLink(destination: Question3()) {
                Text("Next Question")
            }
        }
    }
}
#Preview {
    Question2()
}
