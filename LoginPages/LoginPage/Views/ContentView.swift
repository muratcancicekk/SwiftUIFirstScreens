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




