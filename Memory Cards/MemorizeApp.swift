//
//  Memory_CardsApp.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    private let emojiGameViewModel = EmojiMemoryGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                EmojiMemoryGameView(viewModel: emojiGameViewModel)
                    .navigationTitle(Text(Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String ?? ""))
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
