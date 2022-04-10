//
//  ViewController.swift
//  CryptoCrazyMvvm
//
//  Created by Erdem Siyam on 10.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    private var cryptoListViewModel : CryptoListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tablo Bağlama
        tableView.delegate = self
        tableView.dataSource = self
        
        // Veri Çekme
        getData()
    }
    
    func getData() {
        WebService().getCurrencies(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!) { listCrypto in
            if listCrypto == nil {
                return
            }
            self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: listCrypto!)
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cryptoListViewModel == nil ? 0 : self.cryptoListViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell", for: indexPath) as! CryptoTableViewCell
        let cryptoViewModel = self.cryptoListViewModel.cryptoAtIndex(indexPath.row)
        
        cell.lblName.text =  cryptoViewModel.currency
        cell.lblPrice.text =  cryptoViewModel.price
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(red: 100/255, green: 150/255, blue: 170/255, alpha: 1)
        }
        
        return cell
    }

}

