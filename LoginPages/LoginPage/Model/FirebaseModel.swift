//
//  FirebaseModel.swift
//  LoginPage
//
//  Created by Murat Çiçek on 20.04.2022.
//

import Foundation


struct FirebaseModel: Codable, Hashable  {
    
    
    let id: String
    let author: String
    let definition: String
    let example: String
    let word: String
}
