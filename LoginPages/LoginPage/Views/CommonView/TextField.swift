//
//  TextField.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI


struct textField: View {
    @State private var email: String = ""

    var body: some View {
        VStack(spacing:25){
            Text(Constants.SignInEmail).foregroundColor(Color.gray)
            
            TextField( "Work email address",text: $email).padding().background(Color.white.opacity(0.5).cornerRadius(26)).frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.width*0.065)
        }
    }
}
