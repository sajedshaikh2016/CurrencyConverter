//
//  ErrorView.swift
//  CurrencyConverter
//
//  Created by Sajed Shaikh on 04/02/24.
//

import SwiftUI

struct ErrorView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Oopps!, An error occurred!")
                .font(.title2)
                .padding()
            
            Group {
                Text("We could not successfully fetch the exchange rate information")
                Text("Try again in a few minutes!")
            }.multilineTextAlignment(.center)
            
            
            Image("error")
                .resizable()
                .frame(width: 300, height: 300)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Dismiss")
                    .frame(width: 350, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.appColor)
                    .clipShape(.rect(cornerRadius: 12))
            })

        }
        .padding(30)
    }
}

#Preview {
    ErrorView()
}
