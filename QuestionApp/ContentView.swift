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
        ZStack {
            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            Color(red: 124.0/255.0, green: 127.0/255.0, blue: 101.0/255.0)
                .ignoresSafeArea(.all)
                
                VStack {
                    Text("Do you really know your Bible?")
                        .font(.largeTitle)
                        Spacer()
                            .frame(height: 20)
                    NavigationLink(destination: Question1()) {
                        Text("Start")
                            .foregroundStyle(Color.white)
                    }
                }
                
                .padding()
                //                Spacer()
            }
        }
    }
}
    

#Preview {
    ContentView()
}
