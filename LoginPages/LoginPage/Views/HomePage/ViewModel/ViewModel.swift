//
//  ViewModel.swift
//  LoginPage
//
//  Created by Murat Çiçek on 17.04.2022.
//

import Foundation
import SwiftUI
import Firebase

class ViewModel : ObservableObject{
    
    @Published var newList = [Course]()
    @Published var translatedText = ""
    
    func fetchList(search: String){
        Network().fetch(search: search) { (response:Result<ListModel,Error>) in
            switch response {
            case .success(let success):
                DispatchQueue.main.async {
                    self.newList = success.list
                }
                print(success)
            case .failure(let failure):
                print(failure)
                
            }
        }
    }
    

    
  func translate(language:String,definition:String){
        Network().networkData(words: definition, language: language) { (response: Result<Translate,Error>)
            in
            switch response {
            case .success(let success):
                    self.translatedText = success.data.translations.first?.translatedText ?? "Çevirilemedi"

                print(success)
            case .failure(let failure):
        
                print(failure)
                
            }
        }
      
}
  
}
