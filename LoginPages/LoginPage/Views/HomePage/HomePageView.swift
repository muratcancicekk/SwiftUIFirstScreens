//
//  HomePageView.swift
//  LoginPage
//
//  Created by Murat Çiçek on 17.04.2022.
//

import SwiftUI

struct HomePageView: View {

    @State private var search: String = Constants.emptyString
    @StateObject var viewModel = ViewModel()
    @State var translate = Constants.emptyString
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    @State private var favClick: Bool = false
    var body: some View {
            VStack{
                HomePageHeaderCell(viewModel: viewModel, search: search)
                List{
                    ForEach(viewModel.newList,id:\.self){index in
                        DisclosureGroup("Writer: \(index.author ?? Constants.emptyString)  ") {
                            HomePageCell(course: index,favClick:false)
                        }
                    }
                }
                Spacer()
                
            }.onAppear{
                viewModel.fetchList(search: search)
            }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
