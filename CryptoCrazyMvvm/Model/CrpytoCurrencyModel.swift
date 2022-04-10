//
//  CrpytoCurrencyModel.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import Foundation

struct CryptoCurrenctModel : Decodable {
    /*  Decodable: json veriyi modele çevirirken
        Encodable: modeli jsona çevirirken
        Codable: ikisibirlikte  */
    
    let currency : String
    let price : String
}
