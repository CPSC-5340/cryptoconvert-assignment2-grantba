//
//  BitcoinItem.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/23/24.
//

import SwiftUI

struct BitcoinItem: View {
    let itemContent: BitcoinModel<BitcoinItemModel>
    
    var body: some View {
        HStack {
            Text(itemContent.itemContent.cryptoCurrencyName)
            Spacer()
            Text(String(itemContent.itemContent.calculatedAmount))
        }
    }
}

#Preview {
    BitcoinConverter()
}
