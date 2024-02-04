//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Sajed Shaikh on 04/02/24.
//

import Foundation

struct Currency: Hashable {
    let code: String
    let symbol: String
}

class CurrencyState {
    static let currencies: [Currency] = [
        Currency(code: "USD", symbol: "$"),
        Currency(code: "EUR", symbol: "€"),
        Currency(code: "GBP", symbol: "£"),
        Currency(code: "INR", symbol: "₹"),
        Currency(code: "CAD", symbol: "$")
    ]
}
