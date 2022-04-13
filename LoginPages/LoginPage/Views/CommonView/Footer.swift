//
//  Footer.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI


struct footer: View {
    var body: some View {
        VStack(){
            Text("You are completely safe")
            Text(Constants.ReadTerms).foregroundColor(.red.opacity(0.7)).onTapGesture {
            }
        }
    }
}
