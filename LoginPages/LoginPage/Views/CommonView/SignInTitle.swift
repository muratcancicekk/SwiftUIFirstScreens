//
//  SignInTitle.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI


struct signInTitle: View {
    var body: some View {
        Text(Constants.SignIn)
            .font(.system(size: UIScreen.main.bounds.width*0.09))
            .fontWeight(Font.Weight.bold)
    }
}
