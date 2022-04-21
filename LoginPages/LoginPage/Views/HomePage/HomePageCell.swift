//
//  HomePageCell.swift
//  LoginPage
//
//  Created by Murat Çiçek on 19.04.2022.
//

import SwiftUI

struct HomePageCell: View {
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
   
    var course : Course
    @State var favClick: Bool
    init(course: Course,favClick: Bool){
        self.course = course
        self.favClick = favClick
    
    }
     @StateObject var viewModel = ViewModel()
     @StateObject var firebaseViewModel = FirebaseViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Text(course.word ?? Constants.emptyString)
                    .font(SwiftUI.Font.largeTitle)
                    .foregroundColor(Color.blue)
                Spacer()
            }
            HomePageMainTitle(title: Constants.defination, content:  course.definition ?? Constants.emptyString,colorChoise: Color.red)
            Divider()
            HomePageMainTitle(title: Constants.example, content: course.example ?? Constants.emptyString, colorChoise: Color.blue)
            
            if (viewModel.translatedText != Constants.emptyString){
                Text(viewModel.translatedText).background(Color.green).foregroundColor(Color.white)
            }
            HStack{
                Image(systemName: Image.star).frame(width: width*0.12, height: width*0.12)
                    .foregroundColor(favClick ? Color.red : Color.gray)
                    .onTapGesture {
                          if (favClick == true){
                            favClick = false
                            firebaseViewModel.deleteData(listDelete: course)
                        }
                        else {
                            favClick = true
                            firebaseViewModel.addData(course: course)
                        }
                }
                Spacer()
                HomePageMenuCell(course: course)
         
            }
        }
    }
}

