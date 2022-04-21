//
//  AppDelegate.swift
//  LoginPage
//
//  Created by Murat Çiçek on 14.04.2022.
//

import Foundation
import Firebase
import GoogleSignIn


class AppDelegate:NSObject,UIApplicationDelegate,ObservableObject {
 
   
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }

    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any]=[:])
      -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }
    
    
    
}
