//
//  Cardify.swift
//  Memory Cards
//
//  Created by Lasse Silkoset on 03/10/2022.
//

import SwiftUI

struct Cardify: ViewModifier {
    
    let isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: CardConstants.cornerRadius)
            if isFaceUp {
                shape
                    .fill().foregroundColor(.white)
                shape
                    .stroke(lineWidth: CardConstants.lineWidth)
                
            } else {
                shape
                    .fill()
            }
            content.opacity(isFaceUp ? 1.0 : 0.0)
        }
    }
    
    private struct CardConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth = 3.0
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
