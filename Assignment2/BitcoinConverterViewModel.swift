//
//  BitcoinConverterViewModel.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/23/24.
//

import Foundation

class BitcoinConverterViewModel : ObservableObject {
    
    @Published private(set) var cryptoCurrencyArray = [BitcoinModel<BitcoinItemModel>]()
    
    func fetchCryptoCurrencyArray() {
        self.cryptoCurrencyArray = [
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "US Dollar", exchangeRate: 64518.00, calculatedAmount: 64518.00)),
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "Ethereum", exchangeRate: 19.23, calculatedAmount: 19.23)),
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "Tether", exchangeRate: 64407.69, calculatedAmount: 64407.69)),
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "BNB", exchangeRate: 115.62, calculatedAmount: 115.62)),
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "USD Coin", exchangeRate: 65869.68, calculatedAmount: 65869.68)),
            BitcoinModel(itemContent: BitcoinItemModel(cryptoCurrencyName: "XRP", exchangeRate: 104087.80, calculatedAmount: 104087.80))
        ]
    }
    
    func updateCryptoCurrencyItemContent(bitcoinAmount: Double) {
        resetCryptoCurrencyItemContent()
        for index in cryptoCurrencyArray.indices {
            cryptoCurrencyArray[index].itemContent.calculatedAmount = cryptoCurrencyArray[index].itemContent.exchangeRate * bitcoinAmount
        }
    }
    
    func resetCryptoCurrencyItemContent() {
        for index in cryptoCurrencyArray.indices {
            cryptoCurrencyArray[index].itemContent.calculatedAmount = cryptoCurrencyArray[index].itemContent.exchangeRate
        }
    }
}
