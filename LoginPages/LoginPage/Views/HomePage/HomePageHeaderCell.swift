//
//  HomePageHeaderCell.swift
//  LoginPage
//
//  Created by Murat Çiçek on 19.04.2022.
//

import SwiftUI

struct HomePageHeaderCell: View {
    
    @StateObject var viewModel = ViewModel()
    @State  var search: String = Constants.emptyString
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray).opacity(0.3)
            HStack {
                Image(systemName: Image.magnifyingGlass)
                TextField(Constants.search, text: $search)
                Text(Constants.go).onTapGesture {
                    viewModel.fetchList(search: search)
                }.padding()
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}

struct HomePageHeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        HomePageHeaderCell()
    }
}
