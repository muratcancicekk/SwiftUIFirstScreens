//
//  SignInButtons.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI
import Firebase
import GoogleSignIn


struct signInButtons: View {
    @StateObject var viewModel=SıgnInViewModel()
    @State var title = Constants.emptyString
    var body: some View {
        VStack(spacing:15){
            Button(action: {
            })
            {  HStack(){
                Image(systemName: Image.phone)
                Spacer()
                Text(Constants.phoneSignIn)
                Spacer()
      
            }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.white).cornerRadius(26)}.foregroundColor(Color.black)
 
            Button(action: {
                viewModel.GoogleSignIn()
            })
            {  HStack(){
                Image(Image.google)
                    .frame(height:UIScreen.main.bounds.width*0.065)
                Spacer()
                Text(Constants.SignInGoogle)
                Spacer()
            }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.white).cornerRadius(26).foregroundColor(Color.red.opacity(0.7))}
            
            
            
        }
        
      
    }
}
