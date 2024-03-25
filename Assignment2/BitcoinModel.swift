//
//  BitcoinModel.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/23/24.
//

import Foundation

struct BitcoinModel<SomeType> : Identifiable {
    let id = UUID()
    var itemContent : SomeType
}

struct BitcoinItemModel {
    let cryptoCurrencyName : String
    var exchangeRate : Double
    var calculatedAmount : Double
}

