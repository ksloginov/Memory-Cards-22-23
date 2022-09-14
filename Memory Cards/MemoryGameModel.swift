//
//  MemoryGameModel.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/09/2022.
//

import Foundation

struct MemoryGameModel<CardContent> {
    private (set) var cards: [Card]
    
    func choose(card: Card) {
        
        // Find Index of Card in Cards
        
        // Update card with the given index
        
        
        //var foundCard = cards.first { cardInArray in
        //    return cardInArray.id == card.id
        //}
        //foundCard?.isFaceUp.toggle()
    }
    
    
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array

        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
        
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: CardContent
    }
}
