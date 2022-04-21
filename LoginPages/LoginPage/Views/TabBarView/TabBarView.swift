//
//  TabBarView.swift
//  LoginPage
//
//  Created by Murat Çiçek on 19.04.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
              HomePageView()
                   .tabItem {
                       Image(systemName: Image.house)
                       Text(Constants.homePage)
               }
              FavView()
                   .tabItem {
                       Image(systemName: Image.fav)
                       Text(Constants.fav)
               }   
           }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
