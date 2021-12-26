//
//  body.swift
//  LoginPage
//
//  Created by Murat on 25.12.2021.
//

import SwiftUI

struct body: View {
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
            body().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            body().previewDevice(PreviewDevice(rawValue: "iPhone SE(2nd generation)"))

        }
    }
}

struct bodyImage: View {
    var body: some View {
        Image("onboard")
    }
}

struct loginButtons: View {
    fileprivate func extractedFunc() -> Text {
        return Text("Get started")
    }
    
    var body: some View {
        VStack(spacing:15){
            Button(action: {}){
                extractedFunc().padding().foregroundColor(.white).frame(width:UIScreen.main.bounds.width*0.8).background(Color.red.opacity(0.6).cornerRadius(20))
            }
            Button(action: {}){
                Text("Login").padding().foregroundColor(.red.opacity(0.6)).frame(width:UIScreen.main.bounds.width*0.8).background(Color.white.cornerRadius(20)).shadow(color: .black, radius: 0.4, x: 0, y: 0)
            }
            Spacer().frame(height:20)
            HStack{
                Text("New around here?")
                Text("Sing in").foregroundColor(.red.opacity(0.6)).onTapGesture {
                    
                }
            }
            
            
        }
    }
}
