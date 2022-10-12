
//
//  FootballGameViewModel.swift
//  Memorize
//
//  Created by Konstantin Loginov on 26.07.2021.
//
import Foundation

class FootballGameViewModel: ObservableObject {

    private static let footballClubIds = ["10241", "8686", "8685"]

    private static func createMemoryGame() -> MemoryGameModel<String> {
        return MemoryGameModel<String>(numberOfPairsOfCards: 3) { pairIndex in
            return footballClubIds[pairIndex]
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
