//
//  ContentView.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel:EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}
protocol GeometryView: View {
    associatedtype GeoedView:View
    func body(size: CGSize) -> GeoedView
}
extension GeometryView {
    var body: some View {
        GeometryReader { geometry in
            self.body(size: geometry.size)
        }
    }
}
struct CardView: GeometryView {
    func body(size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeWidth)
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.orange)
            }
        }
        .font(font(size: size))
    }
    
    private let cornerRadius:CGFloat = 10
    private let edgeWidth:CGFloat = 3
    private func font(size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.75)
    }
    
    var card:MermoryGame<String>.Card
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
