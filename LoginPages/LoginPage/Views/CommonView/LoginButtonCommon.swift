//
//  ButtonCommonView.swift
//  LoginPage
//
//  Created by Halil İbrahim Öztekin on 13.04.2022.
//

import SwiftUI

struct LoginButtonCommon: View {
    var text : String
    var fgColor : Color
    var bgColor : Color
    var body: some View
    {
        Text(text)
            .buttonStyle(text: text, fgColor: fgColor, bgColor: bgColor)
    }
}

