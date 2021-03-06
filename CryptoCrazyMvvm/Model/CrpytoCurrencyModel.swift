//
//  CrpytoCurrencyModel.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import Foundation

struct CryptoCurrenctModel : Decodable {
    /*  Decodable: json veriyi modele ├ževirirken
        Encodable: modeli jsona ├ževirirken
        Codable: ikisibirlikte  */
    
    let currency : String
    let price : String
}
