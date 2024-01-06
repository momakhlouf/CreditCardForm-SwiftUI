//
//  CreditCardView.swift
//  CreditCard
//
//  Created by Mohamed Makhlouf Ahmed on 06/01/2024.
//

import SwiftUI

struct CreditCardView: View {
    @State var cardInfo = CreditCardInfo()
    @State var flip : Bool = false
    @State var degree: Double = 0
    var body: some View {
        VStack{
            VStack{
                if !flip{
                    CardFrontView(cardInfo: cardInfo)
                }else{
                    CardBackView(cardInfo: cardInfo)
                }
            }
            .rotation3DEffect(
                .degrees(degree),
                 axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
            )
            CardFormView(cardInfo: $cardInfo) {
                withAnimation {
                    degree += 180
                    flip.toggle()
                }
            }
        }
    }
}

#Preview {
    CreditCardView()
}
