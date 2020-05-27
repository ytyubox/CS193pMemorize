//
//  ContentView.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let viewModel:EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card:MermoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10).fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
