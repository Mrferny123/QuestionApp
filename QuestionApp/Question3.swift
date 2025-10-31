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
            ZStack {
                Image("blank bg")
                VStack {
                    Text("Who is considered the 13th apostle to replace Judas Iscariot? ")
                        .frame(maxWidth: 350)
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
                    .foregroundStyle(Color(red: 231.0/255.0, green: 226.0/255.0,blue: 217.0/255.0))
                    NavigationLink(destination: Congrats()) {
                        Text("Next")
                    }
                    //take user to congrats page
                }
            }
            .padding()
        }
    }
}
#Preview {
    Question3()
}
