//
//  CardFormView.swift
//  CreditCard
//
//  Created by Mohamed Makhlouf Ahmed on 06/01/2024.
//

import SwiftUI

struct CardFormView: View {
    @Binding var cardInfo: CreditCardInfo
    @FocusState var isCCVFocused: Bool
    
    @State private var isCreditCardValid = false
      @State private var isExpirationDateValid = false
    @State private var isCCVValid = false

    let onCVVFocused: () -> ()
    var body: some View {
        Form{
            TextField("Card Number", text: $cardInfo.creditNumber)
                .keyboardType(.numberPad)
            TextField("Card Holder Name", text: $cardInfo.creditHolderName)
                .textInputAutocapitalization(.characters)
            TextField("Expire Date", text: $cardInfo.expirationDate)
                .keyboardType(.numberPad)
            TextField("CCV", text: $cardInfo.ccvCode)
                .keyboardType(.numberPad)
                .focused($isCCVFocused)
        }
        .onChange(of: isCCVFocused){
            onCVVFocused()
        }
    }
}
//#Preview {
//    CardFormView(cardInfo: , onCVVFocused: {})
//}
