//
//  LandingView.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/15/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI
import GoogleSignIn
import Firebase
import FacebookLogin


struct LandingView: View {
    @State var isNavigationBarHidden: Bool = true
    
    func signIn() {
    }
    var body: some View {
        
        
        NavigationView {
            ZStack {
                Image("landing")
                    .resizable()
                    .blur(radius: 10, opaque: true)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(spacing: 10) {
                        Text("Welcome!")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Sign-in to continue.")
                            .foregroundColor(.white)
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                    .padding()
                    
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Continue with Your Email")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                            .background(Color(.systemOrange))
                            .cornerRadius(10)
                        
                    }
                    .padding([.leading, .top, .trailing])
                    
                    HStack {
                        line
                        Text("or")
                            .foregroundColor(.white)
                            .font(.headline)
                            .fontWeight(.regular)
                        line
                    }
                    
                    Button(action: attemptLoginGoogle) {
                        HStack {
                            Image("googleLogo")
                                .resizable()
                                .renderingMode(.original)
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(5)
                            
                            Text("Continue with Google")
                                .font(.custom("Roboto-Regular", size: 15))
                                .frame(width: 175, alignment: .leading)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .background(Color(.white))
                        .cornerRadius(10)
                    }
                    
                    
                    Button(action: attemptLoginFacebook) {
                        HStack {
                            Image("facebookLogo")
                                .resizable()
                                .renderingMode(.original)
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(5)
                            
                            Text("Continue with Facebook")
                                .frame(width: 175, alignment: .leading)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .background(Color(UIColor(red:0.26, green:0.40, blue:0.70, alpha:1.0)))
                        .cornerRadius(10)
                    }
                    
                    Button(action: signIn) {
                        HStack {
                            Image("appleLogo")
                                .renderingMode(.original)
                                .frame(width: 25, height: 25)
                                .padding(5)
                            
                            Text("Continue with Apple")
                                .frame(width: 175, alignment: .leading)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .background(Color(.black))
                        .cornerRadius(10)
                    }
                }
                .padding([.leading, .bottom, .trailing])
            }
        }
            // Navbar modifiers
            .navigationBarHidden(isNavigationBarHidden)
            .navigationBarTitle("Back")
            .onAppear {
                self.isNavigationBarHidden = true
        }
        .onDisappear {
            self.isNavigationBarHidden = false
        }
    }
}


var line: some View {
    VStack { Divider()
        .background(Color(.white))
        .padding()
    }
}
func attemptLoginGoogle() {
    GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
    GIDSignIn.sharedInstance()?.signIn()
    
    if Auth.auth().currentUser != nil {
    }
}

func attemptLoginFacebook() {
    let loginManager = LoginManager()
    
    loginManager.logIn(permissions: ["email"], from: UIApplication.shared.windows.last?.rootViewController) { (result, error) in
        if error != nil {
            print((error?.localizedDescription)!)
        } else {
            print("VOCE NAO E TAO BURRO")
            
            // ...
            if let error = error {
                print (error.localizedDescription)
                return
            }
            let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
            
            Auth.auth().signIn(with: credential) { (result, error) in
                if error != nil {
                    print((error?.localizedDescription)!)
                    return
                } else {
                    
                    print((Auth.auth().currentUser)!)
                }
            }
            
        }
    }
}




struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
