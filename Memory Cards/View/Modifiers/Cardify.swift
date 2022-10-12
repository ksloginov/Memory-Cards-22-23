//
//  Cardify.swift
//  Memory Cards
//
//  Created by Lasse Silkoset on 03/10/2022.
//

import SwiftUI


struct Cardify: AnimatableModifier {
    
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    var animatableData: Double {
        get {return rotation}
        set {rotation = newValue}
    }
    
    var rotation: Double = 0// rotasjonen målt i grader
    
    // var isFaceUp: Bool = false <-- trenger ikke denne lenger
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: CardConstants.cornerRadius)
            if rotation < 90 {
                shape
                    .fill().foregroundColor(.white)
                shape
                    .stroke(lineWidth: CardConstants.lineWidth)
                
            } else {
                shape
                    .fill()
            }
            content.opacity((rotation < 90) ? 1.0 : 0.0)
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
    
    private struct CardConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth = 3.0
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
