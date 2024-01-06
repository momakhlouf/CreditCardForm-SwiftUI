//
//  CardFrontView.swift
//  CreditCard
//
//  Created by Mohamed Makhlouf Ahmed on 06/01/2024.
//

import SwiftUI

struct CardFrontView: View {
    let  cardInfo: CreditCardInfo

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "checkmark.circle.fill")
                Spacer()
                Text("VISA")
            }
            .padding()
            Text(cardInfo.creditNumber.isEmpty ? " " : cardInfo.creditNumber)
                .padding()
                .font(.system(size: 26 , weight: .bold, design: .rounded))
            HStack(alignment: .top){
                VStack(alignment: .leading) {
                    Text("CARD HOLDER")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    Text(cardInfo.creditHolderName.isEmpty ? " " : cardInfo.creditHolderName)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack{
                    Text("EXPIRES")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    Text(cardInfo.expirationDate)
                        .fontWeight(.bold)
                }
                .font(.caption)

            }
            .padding()
            Spacer()

        }
        .modifier(CardViewModifier())
    }
}

#Preview {
    CardFrontView(cardInfo: CreditCardInfo())
}
