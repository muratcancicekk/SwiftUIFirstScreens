//
//  Translate.swift
//  LoginPage
//
//  Created by Murat Çiçek on 18.04.2022.
//




import Foundation


struct Translate: Codable {
    let data: DataClass
}


struct DataClass: Codable, Hashable {
    let translations: [Translation]
}


struct Translation: Codable, Hashable {
    let translatedText: String
}
