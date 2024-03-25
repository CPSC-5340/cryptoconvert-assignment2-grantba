//
//  BitcoinConverter.swift
//  Assignment2
//
//  Created by Blaire Grant on 3/23/24.
//

import SwiftUI

struct BitcoinConverter: View {
    @ObservedObject var viewModel = BitcoinConverterViewModel()
    @State var amount = ""
    @State var calculateDoubleAmount : Double = 0.0
    @FocusState private var isFirstResponder :Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Bitcoin:")
                    .padding(20)
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
                    .focused($isFirstResponder)
                    .multilineTextAlignment(.leading)
                    .padding(5)
                    .textFieldStyle(.roundedBorder)                 .padding(.trailing, 20.0)
                    .onTapGesture {
                        isFirstResponder = true
                    }
                    .onChange(of: amount) { stringAmount in
                        if let doubleAmount = Double(stringAmount) {
                            calculateDoubleAmount = doubleAmount
                        }
                        viewModel.updateCryptoCurrencyItemContent(bitcoinAmount: calculateDoubleAmount)
                    }
            }
            List {
                ForEach(viewModel.cryptoCurrencyArray) {itemContent
                    in BitcoinItem(itemContent: itemContent)
                }
            }
            .listStyle(.grouped)
            .onAppear {
                viewModel.fetchCryptoCurrencyArray()
            }
            .onTapGesture {
                isFirstResponder = false
            }
        }
    }
}

#Preview {
    BitcoinConverter()
}
