//
//  LoginButtons.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI

struct loginButtons: View {
    fileprivate func extractedFunc() -> Text {
        return Text(Constants.GetStarted)
    }
    
    var body: some View {
        VStack(spacing:15){
            Button(action: {}){
                extractedFunc().padding().foregroundColor(.white).frame(width:UIScreen.main.bounds.width*0.8).background(Color.red.opacity(0.6).cornerRadius(20))
            }
            Button(action: {}){
                Text(Constants.Login).padding().foregroundColor(.red.opacity(0.6)).frame(width:UIScreen.main.bounds.width*0.8).background(Color.white.cornerRadius(20)).shadow(color: .black, radius: 0.4, x: 0, y: 0)
            }
            Spacer().frame(height:20)
            HStack{
                Text("New around here?")
                Text(Constants.SignIn).foregroundColor(.red.opacity(0.6)).onTapGesture {
                    
                }
            }
            
            
        }
    }
}
