//
//  MermonyGame.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import Foundation

struct MermoryGame<CardContent> {
    
    var cards: Array<Card>
    
    func choose(card: Card) {
        print(#file, #line, "card chosen:", card)
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
