//
//  FirebaseViewModel.swift
//  LoginPage
//
//  Created by Murat Çiçek on 21.04.2022.
//

import Foundation
import Firebase
class FirebaseViewModel : ObservableObject{
    @Published var newList = [Course]()
    @Published var translatedText = ""
    @Published var list = [FirebaseModel]()
    
    func deleteData(listDelete: Course){
        let db = Firestore.firestore()
        db.collection("Sözlük").document(listDelete.author ?? "" ).delete { error in
            if error == nil{
                
                DispatchQueue.main.async {
                    self.newList.removeAll { FirebaseModel in
                        return FirebaseModel.word == listDelete.word
                    }
                }
              
            }
            else {
                
            }
        }
    }
    
    
    
    func addData(course: Course){
        guard course.author != nil else {return}
        
        let db = Firestore.firestore()
        db.collection("Sözlük").addDocument(data: ["author":course.author,"definition":course.definition,"example":course.example,"word":course.word]) { error in
            if error == nil {
                
                self.getData()
            }
            else {
                
            }
            
        }
    }
    
    
    
    func getData(){
        
        let db = Firestore.firestore()
        db.collection("Sözlük").getDocuments { snapshot, error in
            if error == nil {
                
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map({ d in
                            return FirebaseModel(id: d.documentID, author: d["author"] as? String ?? "", definition: d["definition"] as? String ?? "", example: d["example"] as? String ?? "", word: d["word"] as? String ?? "")
                        })
                    }
                }
            }
        }
    }
}

