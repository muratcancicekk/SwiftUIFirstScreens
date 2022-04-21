//
//  LoginButtons.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI

struct loginButtons: View {
    var body: some View {
        
        VStack(spacing:15){

            NavigationLink {
                ContentView()
            } label: {
                LoginButtonCommon(text: Constants.GetStarted, fgColor: .white, bgColor: .red.opacity(0.6))
            }
            NavigationLink{
                LoginPageView()
            }
        label:{
            LoginButtonCommon(text: Constants.Login, fgColor: .red.opacity(0.6), bgColor: .white)
                .cornerRadius(20)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
        }
          
            Spacer().frame(height:20)
            HStack{
                Text(Constants.newAround)
                NavigationLink {
                    ContentView()
                } label: {
                    Text(Constants.SignIn).foregroundColor(.red.opacity(0.6))
                }
       
            }
            
            
        }
    }
}





