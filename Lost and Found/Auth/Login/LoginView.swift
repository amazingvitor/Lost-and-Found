//
//  LoginView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/31/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    @ObservedObject var keyboardResponder = KeyboardObserver()
    @EnvironmentObject var session: SessionStore
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    
    //    func getUser() {
    //        session.listen()
    //    }
    
    
    
    func signIn() {
        session.singIn(email: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Welcome Back!")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Sign-in to continue")
                .font(.headline)
                .fontWeight(.regular)
            
            VStack(spacing: 20) {
                TextField("Email Address", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
            }
            .padding(.vertical, 64)
            
            Button(action: signIn) {
                Text("Sign in")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .background(Color(UIColor(red:0.61, green:0.15, blue:0.69, alpha:1.0)))
                    .cornerRadius(10)
            }
            
            if error != "heklkl" {
                Text(error)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.red)
                    .padding()
            }
            Spacer()
            
            HStack {
                Text("I'm a new user.")
                    .font(.headline)
                    .fontWeight(.regular)
                NavigationLink(destination: MoreView()) {
                    Text("Create an account")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor(red:0.61, green:0.15, blue:0.69, alpha:1.0)))
                }
                
            }
            
        }
        .padding(.horizontal, 30)
        .padding(.top, 50)
        .padding(.bottom, 20)
        .offset(y: -keyboardResponder.currentHeight*0.9)
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(SessionStore())
    }
}
