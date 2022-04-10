//
//  CryptoListViewModel.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import Foundation

struct CryptoListViewModel {
    
    let cryptoCurrencyList: [CryptoCurrenctModel]
    
}

extension CryptoListViewModel {
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
    
}
