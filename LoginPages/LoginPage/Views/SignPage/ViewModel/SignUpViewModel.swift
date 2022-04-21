//
//  SignUpViewModel.swift
//  LoginPage
//
//  Created by Murat Çiçek on 15.04.2022.
//


import Foundation
import SwiftUI
import Firebase
import GoogleSignIn

class SıgnUpViewModel : ObservableObject{
    @State var signUpProcessing = false
    func SignUpUser(userEmail: String, userPassword: String) {
        signUpProcessing = true
        
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                self.signUpProcessing = false
                return
            }
            switch authResult {
            case .none:
                print("Could not create account.")
                    self.signUpProcessing = false
            case .some(_):
                print("User created")
                    self.signUpProcessing = false
            }
        }
    }}
