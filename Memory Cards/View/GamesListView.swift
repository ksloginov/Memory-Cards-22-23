//
//  GamesListView.swift
//  Memory Cards
//
//  Created by Bendik Svalastog on 12/10/2022.
//

import SwiftUI

struct GamesListView: View {
    
    private let emojiGameViewModel = EmojiMemoryGameViewModel()
    private let footballGameViewModel = FootballGameViewModel()
    
    var body: some View {
        
        List {
            NavigationLink(destination:
                            EmojiMemoryGameView(viewModel: emojiGameViewModel)) {
                Text("Hei, Emoji-spill!")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            NavigationLink(destination:
                            FootballMemoryGameView(viewModel: footballGameViewModel)) {
                Text("ball")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            NavigationLink(destination:
                            EmojiMemoryGameView(viewModel: emojiGameViewModel)) {
                Text("Hei, Emoji-spill!")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            NavigationLink(destination:
                            FootballMemoryGameView(viewModel: footballGameViewModel)) {
                Text("ball")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            NavigationLink(destination:
                            EmojiMemoryGameView(viewModel: emojiGameViewModel)) {
                Text("Hei, Emoji-spill!")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            NavigationLink(destination:
                            FootballMemoryGameView(viewModel: footballGameViewModel)) {
                Text("ball")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
        }
        
    }
}

struct GamesListView_Previews: PreviewProvider {
    static var previews: some View {
        GamesListView()
    }
}
