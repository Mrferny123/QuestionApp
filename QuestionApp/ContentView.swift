//
//  ContentView.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0
    var body: some View {
    NavigationStack {
        ZStack {
            Image("true app bg")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 400, height: 800)
                
                VStack {
                    Spacer()
                        .frame(height: 700)
                    NavigationLink(destination: Question1(score: $score)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 190.0/255.0, green: 168.0/255.0, blue: 170.0/255.0))
                                .frame(width: 165.0, height: 55.0)
                            Text("Start the quiz")
                                .foregroundStyle(Color.black)
                                .font(.system(size: 25.0))
                        }
                    }
                }
                .padding()
                //                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
    

#Preview {
    ContentView()
}
