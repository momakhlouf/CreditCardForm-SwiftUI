//
//  CardBackView.swift
//  CreditCard
//
//  Created by Mohamed Makhlouf Ahmed on 06/01/2024.
//

import SwiftUI

struct CardBackView: View {
    let  cardInfo: CreditCardInfo

    var body: some View {
        VStack(alignment: .leading){
            Text("# Card lost or stolen call 12345")
                .font(.system(size: 10))
                .opacity(0.6)
                .padding(.horizontal ,20)
                .padding(.top, 5)
            Rectangle()
                .frame(height: 60)
                .foregroundStyle(.black)
            HStack(alignment: .top, spacing: 0){
                Rectangle()
                    .frame(height: 60)
                    .foregroundStyle(.white.opacity(0.6))
                Text(cardInfo.ccvCode.isEmpty ? "---" : cardInfo.ccvCode)
                    .foregroundStyle(.white)
                    .frame(width: 40, height: 60)
                    .background{
                        Color.white.opacity(0.3)
                    }
            }
            .padding(20)
           
            Spacer()
        }
        .rotation3DEffect(
            .degrees(180),
            axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
        )
        .modifier(CardViewModifier())
    }
}

#Preview {
    CardBackView(cardInfo: CreditCardInfo())
}
