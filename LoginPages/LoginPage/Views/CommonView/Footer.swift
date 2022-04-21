//
//  Footer.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI


struct footer: View {
    @Binding var showWebView : Bool
    var body: some View {
        VStack(){
            Text(Constants.complety)
            Text(Constants.ReadTerms).foregroundColor(.red.opacity(0.7))
                .onTapGesture {
                    showWebView.toggle()
                }
        }
    }
}
