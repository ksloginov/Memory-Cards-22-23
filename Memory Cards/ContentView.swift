//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    // var emojies = ["❤️", "👨🏻‍🍳", "💩", "😡"]
    // var emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    var body: some View {
        HStack {
            CardView(content: "🥲")
            CardView(content: "🎯")
            CardView(content: "⛳️")
            CardView(content: "🐼")
        }
    }
}
