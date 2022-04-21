//
//  HomePageMenuCell.swift
//  LoginPage
//
//  Created by Murat Çiçek on 21.04.2022.
//

import SwiftUI

struct HomePageMenuCell: View {
    @StateObject var viewModel = ViewModel()
    var course : Course
    init(course: Course){
        self.course = course 
    }
    
    var body: some View {
        Menu {
            Button {
                viewModel.translate(language: Constants.tr, definition: course.definition ?? Constants.emptyString)

            } label: {
                Text(Constants.turkey)
            }

            Button {
                viewModel.translate(language: Constants.es, definition: course.definition ?? Constants.emptyString)
          
            } label: {
                Text(Constants.spanish)
            }
            Button {
                viewModel.translate(language: Constants.it, definition: course.definition ?? Constants.emptyString)
           
            } label: {
                Text(Constants.italian)
            }
        } label: {
            Text(Constants.translate)
            Image(systemName:Image.network)
        }
    }
}

