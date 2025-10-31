//
//  Congrats.swift
//  QuestionApp
//
//  Created by Nissi Sanju on 10/28/25.
//

import SwiftUI

//struct Question2: View {
//    @State private var message = ""
//    var body: some View {

struct Congrats: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("blank bg")
                VStack {
                    Text("Congrats on completing the quiz! You got _ out of 3 right!")
                        .frame(maxWidth: 350)
                        .font(.title)
                    //use if, else if thing to say different message options
                    NavigationLink(destination: ContentView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .fill(Color(red: 190.0/255.0, green: 168.0/255.0, blue: 170.0/255.0))
                                .frame(width: 200.0, height: 55.0)
                            Text("Go Back to the Start")
                                .foregroundStyle(Color.black)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    Congrats()
}
