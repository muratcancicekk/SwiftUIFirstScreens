//
//  SignInViewModel.swift
//  LoginPage
//
//  Created by Murat Çiçek on 14.04.2022.
//

import Foundation
import SwiftUI
import Firebase
import GoogleSignIn

class SıgnInViewModel : ObservableObject{
    @State var sign: Bool = false
    @Published var title = "Sign with"
    
    
    func MailSignIn(email:String,pass:String){
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            }
            else
            {
                self.sign = true
            }
        }
    }
    
 
    func GoogleSignIn()
    {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController()) {[weak self] user, err in
            if let self = self {
                if let error = err {
                    print(error.localizedDescription)
                    return
                }
                guard let authentication = user?.authentication, let idToken = authentication.idToken else { return }
                let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                               accessToken: authentication.accessToken)
                
                Auth.auth().signIn(with: credential) { result, err in
                    if let error = err {
                        print(error.localizedDescription)
                        return
                    }
                }
            }
        }
     
    }
    
    func getRootViewController()-> UIViewController{
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        return root
            
    }

}
