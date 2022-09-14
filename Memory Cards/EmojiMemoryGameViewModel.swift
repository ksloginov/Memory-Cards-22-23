//
//  EmojiMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/09/2022.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    private static let emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    private static func createModel() -> MemoryGameModel<String> {
        return MemoryGameModel<String>(numberOfPairsOfCards: 5) { index in
            return emojies[index]
        }
    }
    
    private var model: MemoryGameModel<String> = createModel()
    
    var cards: Array<MemoryGameModel<String>.Card>{
        return model.cards
    }
}
