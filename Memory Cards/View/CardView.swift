//
//  CardView.swift
//  Memorize
//
//  Created by Konstantin Loginov on 24.07.2022.
//

import SwiftUI

struct CardView: View {
    
    var card: MemoryGameModel<String>.Card
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: CardConstants.cornerRadius)
                if card.isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.white)
                    shape
                        .stroke(lineWidth: CardConstants.lineWidth)
                    Text(card.content)
                        .font(Font.system(size: min(proxy.size.width, proxy.size.height) * CardConstants.scaleFactor))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape
                        .fill()
                }
            }
        }
    }
    
    private struct CardConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth = 3.0
        static let scaleFactor = 0.8
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(isFaceUp: true, isMatched: false, content: "🎸", id: 42))
    }
}
