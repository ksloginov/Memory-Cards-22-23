//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        VStack {
            AspectVGrid(columns: viewModel.cards, aspectRatio: 2/3, content: { card in
               cardView(for: card)
            })
            .padding(.top, 50)
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        .navigationBarItems(trailing: Button(action: {
            withAnimation{
                viewModel.restart()
            }
        })
                            {
            Text("Restart")
                .foregroundColor(.red)
        }
       
        )
    }
    
    @ViewBuilder
    private func cardView(for card: MemoryGameModel<String>.Card) -> some View {
        if card.isMatched && !card.isFaceUp {
            Color.clear
        } else {
            CardView(card: card)
                .onTapGesture {
                    viewModel.choose(card)
                }
                .padding(4)
        }
    }
}




struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = EmojiMemoryGameViewModel()
        EmojiMemoryGameView(viewModel: viewModel)
            .preferredColorScheme(.dark)
//        EmojiMemoryGameView(viewModel: viewModel)
//            .preferredColorScheme(.light)
    }
}





