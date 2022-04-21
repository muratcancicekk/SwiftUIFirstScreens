//
//  TextField.swift
//  LoginPage
//
//  Created by Murat Çiçek on 12.04.2022.
//

import SwiftUI



struct CustomTextField : View {
    @Binding var values : String
    @State var textTitle: String
    var cellTitle : String
    var body: some View {
        VStack(spacing:25){
            Text(cellTitle).foregroundColor(Color.gray)
            TextField(textTitle,text: $values)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(26).frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.width*0.065) 
        }
    }
}



