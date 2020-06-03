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
    private let ButtonText = "New game"
    private let ThemeText:String = "Playing theme:"
    private let scoreText:String = "score: "
    var body: some View {
        VStack {
            Button(ButtonText,
                   action: didTapNewGame)
            Text(scoreText+"\(viewModel.score)")
            HStack {
                Grid(viewModel.cards) { card in
                    CardView(card: card,
                             color: self.viewModel.gameTheme.themeColor)
                        .onTapGesture {
                            self.viewModel.choose(card: card)
                    }
                    .padding(5)
                }
            }
            .padding()
            .foregroundColor(viewModel.gameTheme.themeColor)
            Text(ThemeText)
            Text(viewModel.gameTheme.themeName.capitalized)
                .font(.largeTitle)
        }
    }
    private func didTapNewGame() {
        viewModel.newGame(gameTheme: GameTheme.allThemes.randomElement()!)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame(gameTheme: .halloween
        ))
    }
}
