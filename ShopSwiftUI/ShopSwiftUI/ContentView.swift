//
//  ContentView.swift
//  ShopSwiftUI
//
//  Created by MAC13 on 13.03.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //  @State private var signIn = ""
        @State private var firstName = ""
        @State private var lastName = ""
        @State private var email = ""
        @State private var wrongEmail = 0
        @State private var showingScreen = false
    

    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray5).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Sign in")
                        .padding(.bottom, 80)
                        .bold()
                        .font(.largeTitle)
                    TextField("First name", text: $firstName)
                        .padding()
                        .frame(width: 300, height: 40)
                        .multilineTextAlignment(.center)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(25)
                        .padding(.bottom, 30)
                    TextField("Last name", text: $firstName)
                        .padding()
                        .frame(width: 300, height: 40)
                        .multilineTextAlignment(.center)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(25)
                        .padding(.bottom, 30)
                    TextField("Email", text: $firstName)
                        .padding()
                        .frame(width: 300, height: 40)
                        .multilineTextAlignment(.center)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(25)
                        .border(.red, width: CGFloat(wrongEmail))
                        .padding(.bottom, 30)
                    Button("Sign in") {
                        autheticateUser(email: email)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 70)
                    //  .padding()
                    .background(Color.indigo)
                    .cornerRadius(25)
                    
                }
                NavigationLink(
                    destination: Text("You are logged in @\(firstName)"),
                    isActive: $showingScreen,
                    label: {
                    EmptyView()
                })
            }
        }
        .navigationBarHidden(true)
    }
    
    func autheticateUser(email: String) {
        if email.hasPrefix("@mail.ru") {
            wrongEmail = 0
            showingScreen = true
        } else {
            wrongEmail = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
