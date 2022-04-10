//
//  CryptoViewModel.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import Foundation

struct CryptoViewModel {
    
    let cryptoCurrency: CryptoCurrenctModel
    
}

extension CryptoViewModel {
    
    var currency: String {
        return self.cryptoCurrency.currency
    }
    var price: String {
        return self.cryptoCurrency.price
    }
    
}
