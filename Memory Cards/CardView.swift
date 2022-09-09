//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09/09/2022.
//

import SwiftUI

struct CardView: View {
    
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        Group {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            
            if isFaceUp {
                ZStack {
                    shape.foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3.0)
                    Text(content)
                        .font(.largeTitle)
                }
            } else {
                shape
            }
        }
        .foregroundColor(.red)
        .onTapGesture {
            isFaceUp.toggle()
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
