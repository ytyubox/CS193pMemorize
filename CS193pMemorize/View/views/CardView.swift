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
    
    func body(size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                front()
            }else if !card.isMatched{
                back()
            }
        }
        .font(font(size: size))
    }
    @ViewBuilder
    private func front() -> some View {
        RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
        RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeWidth)
            .fill(linearGradient)
        Text(card.content)
    }
    @ViewBuilder
    private func back() -> some View {
        RoundedRectangle(cornerRadius: cornerRadius).fill(
                         linearGradient
                     )
    }
    
    private let cornerRadius:CGFloat = 10
    private let edgeWidth:CGFloat = 3
    private func font(size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.75)
    }
    private var linearGradient:LinearGradient {
        LinearGradient(gradient: Gradient(colors: [
            color.opacity(0.5),
            color,
        ]),
                       startPoint: .top,
                       endPoint: .bottom)
    }
    
   private var card:MermoryGame<String>.Card
   private let color: Color
}
