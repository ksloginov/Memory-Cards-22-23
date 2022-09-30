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
                let shape = RoundedRectangle(cornerRadius: 20)
                if card.isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.white)
                    shape
                        .stroke(lineWidth: 3.0)
                    Text(card.content)
                        .font(Font.system(size: min(proxy.size.width, proxy.size.height) * 0.8))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape
                        .fill()
                }
            }
        }
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(isFaceUp: true, isMatched: false, content: "🎸", id: 42))
    }
}
