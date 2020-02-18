//
//  LoginLogic.swift
//  Lost and Found
//
//  Created by Vitor Hugo on 2/16/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import Firebase
import GoogleSignIn
import SwiftUI
import FBSDKLoginKit

class AuthLogic {
    // Google Login
    func attemptLoginGoogle() {
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
        GIDSignIn.sharedInstance()?.signIn()
        
        if Auth.auth().currentUser != nil {
        }
    }
}

