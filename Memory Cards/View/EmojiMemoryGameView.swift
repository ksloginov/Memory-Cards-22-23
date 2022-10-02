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
                CardView(card: card)
                    .onTapGesture {
                        viewModel.choose(card)
                    }
                    .padding(4)
            })
            .foregroundColor(.red)
        }
        .padding(.horizontal)
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





