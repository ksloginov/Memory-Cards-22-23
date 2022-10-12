//
//  FootballMemoryGameView.swift
//  Memorize
//
//  Created by Konstantin Loginov on 23.07.2021.
//
import SwiftUI

struct FootballMemoryGameView: View {

    @ObservedObject var viewModel: FootballGameViewModel

    var body: some View {
        VStack {
            AspectVGrid(columns: viewModel.cards, aspectRatio: 2/3, content: { card in
                cardView(for: card)
            })
            .padding(.top, 12)
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        .navigationBarItems(trailing: Button(action: {
            withAnimation {
                viewModel.restart()
            }
        }) {
            Text("Restart")
                .foregroundColor(.red)
        })
        .navigationTitle("Emoji game")
    }

    @ViewBuilder // <-- pay attention to this declaration. It explains to compile that this function is also a ViewBuilder
    private func cardView(for card: MemoryGameModel<String>.Card) -> some View {
        if card.isMatched && !card.isFaceUp {
            Color.clear
        } else {
            CardView(card: card)
                .modifier(Cardify(isFaceUp: card.isFaceUp))
                .padding(4.0)
                .aspectRatio(2/3, contentMode: .fit)
                .onTapGesture {
                    withAnimation {
                        viewModel.choose(card)
                    }
                }
        }
    }
}
