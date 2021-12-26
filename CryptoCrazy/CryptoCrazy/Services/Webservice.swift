//
//  Webservice.swift
//  CryptoCrazy
//
//  Created by Doğanay Şahin on 2.10.2021.
//

import Foundation

class Webservice{
    

    func downloadCurrencies(url : URL, completion : @escaping ([CryptoCurrency]?) -> ()){
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                let currencyList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                completion(currencyList)
            }
        }.resume()
    }
}
