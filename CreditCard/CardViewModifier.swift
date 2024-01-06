//
//  CardViewModifier.swift
//  CreditCard
//
//  Created by Mohamed Makhlouf Ahmed on 06/01/2024.
//

import Foundation
import SwiftUI

struct CardViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(height: 250)
            .foregroundStyle(.white)
            .background{
                LinearGradient(colors: [.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .padding()
        
    }
    
    
}
