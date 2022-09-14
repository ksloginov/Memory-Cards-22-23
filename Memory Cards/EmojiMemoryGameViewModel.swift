//
//  EmojiMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/09/2022.
//

import Foundation

class EmojiMemoryGameViewModel {
    private var model: MemoryGameModel<String> = MemoryGameModel<String>(numberOfPairsOfCards: 2, createCardContent: { tingen in
        return "♠️"
    })
    
    var cards: Array<MemoryGameModel<String>.Card>{
        return model.cards
    }
}
