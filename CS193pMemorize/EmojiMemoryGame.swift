//
//  EmojiMemoryGame.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    
    typealias Game = MermoryGame<String>
    
    private static func makeGame() -> Game {
        let emojis = [
            "🦑","👺","🍺","😈","🤡","👽",
            "💩","🦋","🐡","🌵","☀️","💧",
            ].shuffled()[0...5]
        let randomNumbor = (3...5).randomElement()!
        return MermoryGame(numberOfPairsOfCards: randomNumbor) { (index) in
            return emojis[index]
        }
    }
    private var model: Game = EmojiMemoryGame.makeGame()
    
    // MARK: - Access to the Model
    
    var cards: Array<Game.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: Game.Card) {
        model.choose(card: card)
    }
    
}
