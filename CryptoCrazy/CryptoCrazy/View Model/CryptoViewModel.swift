//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Doğanay Şahin on 3.10.2021.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
    
    func numberOfIndexInSection () -> Int{
        return cryptoCurrencyList.count
    }
    
    func cyrptoAtIndex(index : Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}


struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
    
    
    var name : String{
        return self.cryptoCurrency.currency
    }
    
    var price : String{
        return self.cryptoCurrency.price
    }
}
