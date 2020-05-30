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
    
    var score:Int = 0
    
    private var lastChooseDate:Date?
    
    var indexOfOneAndOnlyFaceUpCard:Int? {
        get
        {
            let faceupCardIndices = cards.indices.filter{
                self.cards[$0].isFaceUp
            }
            return faceupCardIndices.only
        }
        set
        {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    mutating func choose(card: Card)
    {
        guard
            let chooseIndex = cards.firstIndex(matching: card),
            !cards[chooseIndex].isFaceUp,
            !cards[chooseIndex].isMatched
            else {return}
        if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard  {
            alreadyChooseOneCard(chooseIndex: chooseIndex,
                                 potentialMatchIndex: potentialMatchIndex)
            return
        }
        indexOfOneAndOnlyFaceUpCard = chooseIndex
        lastChooseDate = Date()
    }
    
    private mutating func alreadyChooseOneCard(chooseIndex:Int, potentialMatchIndex:Int) {
        if cards[chooseIndex].content == cards[potentialMatchIndex].content {
            cards[chooseIndex].isMatched = true
            cards[potentialMatchIndex].isMatched = true
            score += calculateScore(date: lastChooseDate!)
        }
        else {
            score -= 1
        }
        cards[chooseIndex].isFaceUp = true
    }
    
    private func calculateScore(date:Date) -> Int {
        let value = date.distance(to: Date())
        return max(Int(10 - value) / 2, 2)
    }
    
    struct Card:Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
