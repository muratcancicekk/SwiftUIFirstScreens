//
//  Network.swift
//  LoginPage
//
//  Created by Murat Çiçek on 18.04.2022.
//

import Foundation

struct Network {
    func networkData<T:Codable>(words: String, language: String, completion: @escaping (Result<T,Error>) -> Void) {
        let headers = [
            "content-type": "application/x-www-form-urlencoded",
            "Accept-Encoding": "application/gzip",
            "X-RapidAPI-Host": "google-translate1.p.rapidapi.com",
            "X-RapidAPI-Key": "6f7b8d6eadmsh7d7d571050ca167p1a8290jsn0353efcd74c9"
        ]

        let postData = NSMutableData(data: "q=\(words)".data(using: String.Encoding.utf8)!)
        postData.append("&target=\(language)".data(using: String.Encoding.utf8)!)
        postData.append("&source=en".data(using: String.Encoding.utf8)!)

        let request = NSMutableURLRequest(url: NSURL(string: "https://google-translate1.p.rapidapi.com/language/translate/v2")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData as Data

        let session = URLSession.shared
        session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if let error = error {
                print(error.localizedDescription)
                completion(.failure(error))
            }
            if let response = response as? HTTPURLResponse, 200..<300 ~= response.statusCode {
                print(response)
            }
            if let data = data {
                let decoder = JSONDecoder()
                do {
                    let decoded = try decoder.decode(T.self, from: data)
                    completion(.success(decoded))

                   
                }
                catch{
                    completion(.failure(error))
                }
            }
        })

        .resume()
    }
    
    
    func fetch (search:String,completion:@escaping(Result<ListModel,Error>)->Void){
       
        
        let headers = [
            "X-RapidAPI-Host": "mashape-community-urban-dictionary.p.rapidapi.com",
            "X-RapidAPI-Key": "bedf306c6bmsh92da0bbb775efeep1daac0jsnb3e3e0b506cb"
        ]
        let request = NSMutableURLRequest(url: NSURL(string: "https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=\(search)")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error ?? "")
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }
            
            guard let data = data else {
                return
            }
            do {
                
                let decoder = JSONDecoder()
                let product = try decoder.decode(ListModel.self, from: data)
                completion(.success(product))
                
            }
            catch{
                
            }
            
        })
        dataTask.resume()
      
    }
    
    
    
    
}
