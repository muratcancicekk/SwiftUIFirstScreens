//
//  SignUpButton.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI

struct signUpButton: View {
    @StateObject var viewModel : SıgnUpViewModel = SıgnUpViewModel()
    @Binding  var email : String
    @Binding  var pass : String

    var body: some View {
        NavigationLink {
            TabBarView()
        }
    label: {
        HStack(){
            Spacer()
            Text(Constants.SignInEmail).font(.system(size: UIScreen.main.bounds.width*0.055)).fontWeight(.medium).onTapGesture {
                viewModel.SignUpUser(userEmail: email, userPassword: pass)
            }
            Spacer()
       
        }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.red.opacity(0.7)).cornerRadius(26).foregroundColor(Color.white)}
        
    }
  
    }

