//
//  MermonyGame.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import Foundation

struct MermoryGame<CardContent:Equatable> {
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
        cards.shuffle()
    }
    
    
    var cards: Array<Card>
    
    var indexOfOneAndOnlyFaceUpCard:Int? {
        get
        {
            var faceupCardIndices = [Int]()
            for index in cards.indices {
                if cards[index].isFaceUp {
                    faceupCardIndices.append(index)
                }
            }
            return
                faceupCardIndices.count == 1
                    ? faceupCardIndices.first
                    : nil
        }
        set
        {
            for index in cards.indices {
                if index == newValue {
                    cards[index].isFaceUp = true
                } else {
                    cards[index].isFaceUp = false
                }
                
            }
            dump(cards)
        }
    }
    
    mutating func choose(card: Card)
    {
        if
            let chooseIndex = cards.firstIndex(matching: card),
            !cards[chooseIndex].isFaceUp,
            !cards[chooseIndex].isMatched
        {
            if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard
            {
                if cards[chooseIndex].content == cards[potentialMatchIndex].content {
                    cards[chooseIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                cards[chooseIndex].isFaceUp = true
            } else {
                indexOfOneAndOnlyFaceUpCard = chooseIndex
            }
        }
    }
    
    struct Card:Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
