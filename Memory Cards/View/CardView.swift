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
                    .font(Font.system(size: min(proxy.size.width, proxy.size.height) * CardConstants.scaleFactor))
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private struct CardConstants {
        static let scaleFactor = 0.75
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(isFaceUp: true, isMatched: false, content: "🎸", id: 42))
    }
}
