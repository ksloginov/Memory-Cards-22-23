//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct CardView: View {
    
    var card: MemoryGameModel<String>.Card
    
    var body: some View {
        Group {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            
            if card.isFaceUp {
                ZStack {
                    shape.foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3.0)
                    Text(card.content)
                        .font(.largeTitle)
                }
            } else {
                shape
            }
        }
        .foregroundColor(.red)
        .onTapGesture {
            // TODO: Add tap gesture
            //isFaceUp.toggle()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
        ContentView()
            .preferredColorScheme(.light)
    }
}
