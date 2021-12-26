//
//  ContentView.swift
//  LoginPage
//
//  Created by Murat on 25.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""

    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.2)
                .ignoresSafeArea()

            VStack(spacing:UIScreen.main.bounds.width*0.1){
                Spacer()
                Spacer().frame(height:0)

                
                 
                signInTitle()
              
                    
                signInButtons()
                
                
                textField()
                
                
                signUpButton()
                
                Divider()
                Spacer()
                
                footer()
                Spacer().frame(height:0)
             
            
            }
            
        }
       
         
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE(2nd generation)"))
          
        }
    }
}

struct signInTitle: View {
    var body: some View {
        Text("Sign in").font(.system(size: UIScreen.main.bounds.width*0.09)).fontWeight(Font.Weight.bold)
    }
}

struct signInButtons: View {
    var body: some View {
        VStack(spacing:15){
            Button(action: {})
            {  HStack(){
                Image("apple").frame(height:UIScreen.main.bounds.width*0.065)
                Spacer()
                Text("Sign in with Apple")
                Spacer()
                
                
            }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.white).cornerRadius(26)}.foregroundColor(Color.black)
            
            
            Button(action: {})
            {  HStack(){
                Image("google").frame(height:UIScreen.main.bounds.width*0.065)
                Spacer()
                Text("Sign in with Google")
                Spacer()
                
                
            }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.white).cornerRadius(26).foregroundColor(Color.red.opacity(0.7))}
            
            
            
        }
    }
}

struct textField: View {
    @State private var email: String = ""

    var body: some View {
        VStack(spacing:25){
            Text("or get a link emailed to you").foregroundColor(Color.gray)
            
            TextField( "Work email address",text: $email).padding().background(Color.white.opacity(0.5).cornerRadius(26)).frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.width*0.065)
        }
    }
}

struct signUpButton: View {
    var body: some View {
        Button(action: {
            
        })
        {  HStack(){
            
            Spacer()
            Text("Email me a signup link").font(.system(size: UIScreen.main.bounds.width*0.055)).fontWeight(.medium)
            Spacer()
            
            
        }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.red.opacity(0.7)).cornerRadius(26).foregroundColor(Color.white)}
    }
}

struct footer: View {
    var body: some View {
        VStack(){
            Text("You are completely safe")
            Text("Read our Terms & Conditions.").foregroundColor(.red.opacity(0.7)).onTapGesture {
            }
        }
    }
}
