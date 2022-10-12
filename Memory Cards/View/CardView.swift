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
                Text(card.content)
                    .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
                    .animation(Animation.easeOut(duration: CardConstants.animationDuration).repeatForever())
                    .font(.system(size: CardConstants.fontSize))
                    .scaleEffect(scale(size: proxy.size))
                    
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    
    func scale(size: CGSize) -> CGFloat {
        return min(size.width, size.height) / (CardConstants.fontSize / CardConstants.fontScale)
    }
    
    private struct CardConstants {
        static let fontScale = 0.75
        static let fontSize: CGFloat = 32.0
        static let animationDuration = 2.0
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(isFaceUp: true, isMatched: false, content: "🎸", id: 42))
    }
}
