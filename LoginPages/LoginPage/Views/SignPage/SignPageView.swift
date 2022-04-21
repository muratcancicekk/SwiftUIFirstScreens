//
//  ContentView.swift
//  LoginPage
//
//  Created by Murat on 25.12.2021.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel : SıgnInViewModel = SıgnInViewModel()
    
    @State  var email: String = Constants.emptyString
    @State  var pass: String=Constants.emptyString
    
    @State private var showWebView = false
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        
        ZStack{
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
            VStack(spacing:width*0.1){
                Spacer()
                signInTitle()
                signInButtons(viewModel: self.viewModel)
                CustomTextField(values: $email, textTitle:Constants.Email, cellTitle: Constants.Email)
                CustomTextField(values: $pass, textTitle: Constants.Pass, cellTitle: Constants.Pass)
                signUpButton(email: $email, pass: $pass)
                Divider()
                VStack (spacing: 0){
                    Spacer()
                }
                footer(showWebView: $showWebView)
                Spacer()
            }
        }
        
        .sheet(isPresented: $showWebView) {
            WebView(url: URL(string: Constants.urlTerms)!)
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
}



