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
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                    ForEach(viewModel.cards) { emoji in
                        CardView(card: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(emoji)
                            }
                    }
                }
            }
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
        EmojiMemoryGameView(viewModel: viewModel)
            .preferredColorScheme(.light)
    }
}





