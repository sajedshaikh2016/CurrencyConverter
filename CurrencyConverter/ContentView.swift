//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Sajed Shaikh on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var currencies = CurrencyState.currencies
    @State var amount: String = "100.0"
    @State var fromCurrency: Currency = CurrencyState.currencies[0]
    @State var toCurrency: Currency = CurrencyState.currencies[1]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Currency Converter")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(Color.appColor)
                .padding()
            
            Image("currency-exchange")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("Your Converted Amount")
                .font(.system(.title3))
            
            HStack {
                Text("$100.0")
                    .font(.title)
                    .foregroundStyle(Color.white)
            }.frame(width: 350, height: 80)
                .background(Color.appColor)
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text("Convert Amount").font(.title3).padding()
                
                TextField("", text: $amount)
                    .font(.system(size: 22))
                    .padding(10)
                    .frame(width: 350, height: 50)
                    .background(.gray.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 12))
            }
            
            HStack {
                Text("From Currency")
                Spacer()
                Picker("From Currency", selection: $fromCurrency) {
                    ForEach(currencies, id: \.code) { cur in
                        Text(cur.code).tag(cur)
                    }
                }
            }
            
            HStack {
                Text("To Currency")
                Spacer()
                Picker("To Currency", selection: $toCurrency) {
                    ForEach(currencies, id: \.code) { cur in
                        Text(cur.code).tag(cur)
                    }
                }
            }
            
            Button(action: {
                convertCurrency()
            }, label: {
                Text("Convert")
                    .frame(width: 350, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.appColor)
                    .clipShape(.rect(cornerRadius: 12))
            })
            
        }
        .padding(.top, 30)
        .padding(.leading, 30)
        .padding(.trailing, 30)
    }
    
    func convertCurrency() -> Void {
        print("From Currency", fromCurrency.code)
        print("To Currency", toCurrency.code)
        print("Convert this amount", amount)
    }
    
}

#Preview {
    ContentView()
}
