//
//  ContentView.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    var body: some View {
        NavigationStack {
                
                VStack {
//                    Spacer()
//                        .frame(height: 20)
                    Text("Welcome to a quiz to test your Bible knowledge")
                        .font(.largeTitle)
//                        .padding(.top, 50.0)
                }
                
                .padding()
//                Spacer()
                NavigationLink(destination: Question1()) {
                    Text("Start")

                }
        }
    }
}
    

#Preview {
    ContentView()
}
