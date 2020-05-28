//
//  EmojiMemoryGame.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame:ObservableObject {
    internal init(gameTheme: GameTheme) {
        self.gameTheme = gameTheme
        model = EmojiMemoryGame.makeGame(gameTheme)
    }
    
    
    typealias Game = MermoryGame<String>
    
    private static func makeGame(_ theme: GameTheme) -> Game {
        let emojis = theme.cardContents.shuffled()[0...5]
        let randomNumbor = (3...5).randomElement()!
        return MermoryGame(numberOfPairsOfCards: randomNumbor) { (index) in
            return emojis[index]
        }
    }
    @Published private var model: Game
    
    // MARK: - Access to the Model
    
    var gameTheme:GameTheme
    
    var cards: Array<Game.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: Game.Card) {
        model.choose(card: card)
    }
    
    func newGame(gameTheme:GameTheme) {
        model = EmojiMemoryGame.makeGame(gameTheme)
    }
}
