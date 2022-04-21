//
//  LoginPageView.swift
//  LoginPage
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI
import Firebase
struct LoginPageView: View {
    @State  var email: String = Constants.emptyString
    @State  var pass: String=Constants.emptyString
    @StateObject var viewModel : SıgnInViewModel = SıgnInViewModel()
    @State var sign: Bool = false
    
    var body: some View {
     VStack{
            Spacer()
        CustomTextField(values: $email, textTitle:Constants.Email, cellTitle: Constants.Email)
        CustomTextField(values: $pass, textTitle: Constants.Pass, cellTitle: Constants.Pass)
            HStack(){
                ZStack{
                    NavigationLink(isActive: $sign) {
                        TabBarView()
                    } label: {
                    }.frame(width: 0, height: 0)
                    Button {
                    viewModel.MailSignIn(email: email, pass: pass)                 
                   
                } label: {
                    Text(Constants.SignInEmail).font(.system(size: UIScreen.main.bounds.width*0.055)).fontWeight(.medium)
                }
                }
     
            }.padding().frame(width: UIScreen.main.bounds.width * 0.85).background(Color.red.opacity(0.7)).cornerRadius(26).foregroundColor(Color.white)}}
    }


struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
