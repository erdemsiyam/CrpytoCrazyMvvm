//
//  WebService.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import Foundation

class WebService {
    
    func getCurrencies(url: URL, completion: @escaping([CryptoCurrenctModel]?) -> Void){
        URLSession.shared.dataTask(with: url) { data, urlResponse, error in
            if error != nil || data == nil {
                completion(nil)
                return
            }
            
            // Başarılı olursa
            let cryptoList = try? JSONDecoder().decode([CryptoCurrenctModel].self, from: data!)
            completion(cryptoList)
        }.resume()
    }
}
