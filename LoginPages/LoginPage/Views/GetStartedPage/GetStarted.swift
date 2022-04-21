//
//  body.swift
//  LoginPage
//
//  Created by Murat on 25.12.2021.
//

import SwiftUI
import Firebase
import GoogleSignIn


struct FirstScreen: View {
    
    
    var body: some View {
        ZStack(){
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
            VStack(spacing:100){
                bodyImage()
                loginButtons()
            }
            
        }
    }
}


struct body_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            FirstScreen().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            FirstScreen().previewDevice(PreviewDevice(rawValue: "iPhone SE(2nd generation)"))
            
        }
    }
}



