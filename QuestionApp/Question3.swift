//
//  Question3.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct Question3: View {
    @State private var message = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("Who is considered the 13th apostle to replace Judas Iscariot? ")
                    .font(.title)
                    .padding(.top, 50.0)
                VStack {
                    Button("Barnabas") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("Cornelius") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("Ryan") {
                        message = "Incorrect"
                    }
                    .font(.title)
                    .padding()
                    
                    Button("Matthias") {
                        message = "Correct"
                        
                    }
                    .font(.title)
                    .padding()
                    
                    Text("\(message)")
                    
                }
            }
            .padding()
            Spacer()
            NavigationLink(destination: ContentView()) {
                Text("Go Back to the Start")
            }
            //take user to congrats page
        }
    }
}
#Preview {
    Question3()
}
