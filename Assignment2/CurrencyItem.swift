//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/22/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
        ZStack {
            if (card.isFront) {
                FrontCurrencyItem(card: card.cardContent)
            } else  {
                BackCurrencyItem(card: card.cardContent)
            }
        }
    }
}

struct FrontCurrencyItem: View {
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
                .foregroundStyle(.white)            }
        }
        .font(.largeTitle)
        .frame(width: 130, height: 130)
        .padding()
        .background(Color(red: 0.75, green: 0.1, blue: 0))
    }
}

struct BackCurrencyItem: View {
    var card: CurrencyItemModel

    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
            }
        }
        .font(.title2)
        .foregroundStyle(.white)
        .frame(width: 130, height: 130)
        .padding()
        .background(Color(red: 0.75, green: 0.1, blue: 0))
    }
}

#Preview {
    CurrencyConverter()
}
