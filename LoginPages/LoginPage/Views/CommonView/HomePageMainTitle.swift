//
//  HomePageMainTitle.swift
//  LoginPage
//
//  Created by Murat Çiçek on 17.04.2022.
//

import SwiftUI

struct HomePageMainTitle: View {
    @State var title: String
    @State var content: String
    @State var colorChoise : Color
    
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    
    
    var body: some View{
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(colorChoise)
                    .frame(width: width * 0.2, height: width*0.1)
                    .overlay(  Text(title)
                        .foregroundColor(Color.white))
                
                Spacer()
            }
            Text(content)
        }
    }
}

