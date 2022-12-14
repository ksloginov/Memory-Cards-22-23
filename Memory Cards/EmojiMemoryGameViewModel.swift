//
//  EmojiMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/09/2022.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    private static let emojies = ["âĪïļ", "ðĻðŧâðģ", "ðĐ", "ðĄ", "ð§", "ðĪ", "ðĐ", "ðŊ", "ðĶš", "ð", "ð", "ð", "ðĐ", "ðĶ§", "ðģ", "ð", "ðĶ", "ðĶ", "ðŋ", "ðĶ", "ðĶĶ", "ðĶĒ", "ðĶ"]
    
    private static func createMemoryGame() -> MemoryGameModel<String> {
        return MemoryGameModel<String>(numberOfPairsOfCards: 12) { pairIndex in
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
    
    func restart() {
        model.restart()
    }
}
