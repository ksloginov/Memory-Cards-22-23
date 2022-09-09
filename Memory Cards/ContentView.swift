//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    //let emojies = ["❤️", "👨🏻‍🍳", "💩", "😡"]
    var emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    @State var emojiCount: Int = 23
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 100))]) {
                    ForEach(emojies[0..<emojiCount], id: \.self ) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .padding()
            
            Spacer()
            
            HStack {
                removeButton
                Spacer()
                addButton
            }
        }
    }
    
    private var removeButton: some View {
        Button {
            if emojiCount > 0 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle.fill")
                .resizable()
                .frame(width: 56.0, height: 56.0)
        }
        .padding()
    }
    
    private var addButton: some View {
        Button {
            if emojiCount < emojies.count - 1 {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 56.0, height: 56.0)
        }
        .padding()
    }
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
        ContentView()
            .preferredColorScheme(.light)
    }
}
