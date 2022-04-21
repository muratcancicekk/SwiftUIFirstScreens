//
//  FavView.swift
//  LoginPage
//
//  Created by Murat Çiçek on 19.04.2022.
//

import SwiftUI


struct FavView: View {
    @StateObject var firebaseViewModel = FirebaseViewModel()
    @StateObject var viewModel = ViewModel()
    var body: some View {
        List{
            ForEach(firebaseViewModel.list,id:\.self){index in
                DisclosureGroup("Writer: \(index.author)  ") {
                    let course = Course( definition: index.definition, author: index.author, word: index.word, example: index.example)
                    HomePageCell(course: course,favClick:true)
                }
            }
        }.onAppear(){
            firebaseViewModel.getData()
        }
        
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
