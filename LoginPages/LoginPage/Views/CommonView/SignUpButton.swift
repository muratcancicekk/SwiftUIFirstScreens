//
//  SignUpButton.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI

struct signUpButton: View {
    var body: some View {
        Button(action: {
            
        })
        {  HStack(){
            
            Spacer()
            Text(Constants.SignInEmail).font(.system(size: UIScreen.main.bounds.width*0.055)).fontWeight(.medium)
            Spacer()
            
            
        }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.red.opacity(0.7)).cornerRadius(26).foregroundColor(Color.white)}
    }
}
