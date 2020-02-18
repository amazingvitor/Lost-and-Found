//
//  RegisterView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 1/31/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @State var userName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    
    func signUp() {
    }
    
    var body: some View {
        
        VStack {
            Text("Welcome!")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Sign-up to continue")
                .font(.headline)
                .fontWeight(.regular)
            
            VStack(spacing: 15) {
                
                TextField("@username", text: $userName)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
                
                TextField("First Name", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
                
                TextField("Last Name", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
                
                TextField("Email Address", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0)), lineWidth: 1))
            }
            .padding(.vertical, 20)
            
            
            Button(action: signUp) {
                Text("Sign up")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .background(Color(UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)))
                    .cornerRadius(10)
            }
            
            if error == "" {
                Text(error)
                    .hidden()
            } else {
                Text(error)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.red)
                    .padding()
            }
            
            Spacer()
            HStack {
                Text("I already have an account.")
                    .font(.headline)
                    .fontWeight(.regular)
                NavigationLink(destination: LoginView()) {
                    Text("Sign in")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)))
                }
                
            }
            
        }
        .padding(.horizontal, 30)
        .padding(.top, 50)
        .padding(.bottom, 20)
            
            // Navbar modifiers
            .navigationBarTitle("Back")
    }
    
    var line: some View {
        VStack { Divider()
            .padding()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
