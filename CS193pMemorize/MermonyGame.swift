//
//  MermonyGame.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import Foundation

struct MermoryGame<CardContent> {
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print(#file, #line, "card chosen:", card)
        let chooseIndex = self.index(of: card)
        self.cards[chooseIndex].isFaceUp.toggle()
    }
    
    private func index(of card:Card) -> Int {
        for index in self.cards.indices {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
    struct Card:Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
