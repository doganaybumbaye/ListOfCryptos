//
//  ViewController.swift
//  CryptoCrazy
//
//  Created by Doğanay Şahin on 2.10.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var cryptoListViewModel : CryptoListViewModel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cryptoListViewModel == nil ? 0 : self.cryptoListViewModel.numberOfIndexInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CyrptoCrazyViewCell
        let cryptoViewModel = self.cryptoListViewModel.cyrptoAtIndex(index: indexPath.row)
        
        cell.currencyText.text = cryptoViewModel.name
        cell.priceText.text = cryptoViewModel.price
        return cell
    }
    

    
    @IBOutlet weak var cryptoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cryptoTableView.delegate = self
        cryptoTableView.dataSource = self
        
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        Webservice().downloadCurrencies(url: url) { allCurrencies in
            if let allCurrencies = allCurrencies{
                self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: allCurrencies)
                
                DispatchQueue.main.async {
                    self.cryptoTableView.reloadData()
                }
            }
        }
    }


}

