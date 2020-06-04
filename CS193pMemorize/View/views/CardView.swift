//
//  CardView.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/6/3.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI
struct CardView: GeometryView {
    internal init(card: MermoryGame<String>.Card, color: Color) {
        self.card = card
        self.color = color
    }
    @ViewBuilder
    func body(size: CGSize) -> some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Pie(
                    startAngle: .degrees(0-90),
                    endAngle: .degrees(90-90),
                    clockwise: true
                )
                    .padding(circlePaddingLength)
                    .opacity(0.4)
                Text(card.content)
                    .font(self.font(size: size))
            }
            .cardify(isFaceUp: card.isFaceUp,
                     color: self.color)
        }
    }
    
    
    
    private let circlePaddingLength:CGFloat = 5
    private func font(size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.65)
    }
    
    private var card:MermoryGame<String>.Card
    private let color: Color
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: .init(id: 1,isFaceUp: true, content: "🦑"), color: .orange)
    }
}
