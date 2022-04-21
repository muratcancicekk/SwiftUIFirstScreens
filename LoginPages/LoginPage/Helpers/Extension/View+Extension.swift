//
//  View+Extension.swift
//  LoginPage
//
//  Created by Halil İbrahim Öztekin on 13.04.2022.
//

import Foundation
import SwiftUI
extension View {
    func buttonStyle(text : String, fgColor : Color,bgColor: Color) -> some View {
        
            modifier(buttonModifier(text: text, fgColor: fgColor, bgColor: bgColor))
    }
}

 struct buttonModifier : ViewModifier {
    var text : String
    var fgColor : Color
    var bgColor : Color
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(fgColor)
            .frame(width:UIScreen.main.bounds.width*0.8)
            .background(bgColor)
            .cornerRadius(20)
    }
}
