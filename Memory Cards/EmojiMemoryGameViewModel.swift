//
//  EmojiMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/09/2022.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    private static let emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    private static func createMemoryGame() -> MemoryGameModel<String> {
        return MemoryGameModel<String>(numberOfPairsOfCards: 4) { pairIndex in
            return emojies[pairIndex]
        }
    }
    
    @Published private var model: MemoryGameModel<String> = createMemoryGame()
    
    var cards: Array<MemoryGameModel<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
}
