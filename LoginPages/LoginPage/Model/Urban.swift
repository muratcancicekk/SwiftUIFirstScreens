//
//  Urban.swift
//  LoginPage
//
//  Created by Murat Çiçek on 17.04.2022.
//

import Foundation

struct ListModel: Codable,Hashable{
    
    let list: [Course]
}

struct Course: Codable,Hashable {
 
    
    let definition: String?
    let author: String?
    let word: String?
    let example: String?
 
}
