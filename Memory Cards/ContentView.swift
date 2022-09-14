//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = EmojiMemoryGameViewModel()

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 100))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.chooseCard(card: card)
                            }
                    }
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

/*
struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
        ContentView()
            .preferredColorScheme(.light)
    }
}
*/
