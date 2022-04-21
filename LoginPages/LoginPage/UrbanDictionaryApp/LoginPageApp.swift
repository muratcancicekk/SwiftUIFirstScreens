//
//  LoginPageApp.swift
//  LoginPage
//
//  Created by Murat on 25.12.2021.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct LoginPageApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        
        WindowGroup {
            NavigationView{
                FirstScreen()
            }
        }
    }
}





