//
//  GameTheme.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct GameTheme {
    internal init(themeColor: Color, cardContents: [String]) {
        assert(cardContents.count >= 12)
        self.themeColor = themeColor
        self.cardContents = cardContents
    }
    
    var themeColor:Color
    var cardContents:[String]
}


extension GameTheme {
    
    static var allThemes:[GameTheme]
    {
        [
            .halloween,
            .animal,
            .sign,
            .food,
            .balls,
            .transports,
        ]
    }
    
    static let halloween = GameTheme(
        themeColor: .orange,
        cardContents: [
            "🦑","👺","🍺","😈","🤡","👽",
            "💩","🦋","🐡","🌵","☀️","💧",
    ])
    
    static let animal = GameTheme(
        themeColor: .green,
        cardContents: [
            "🐭","🐮","🐯","🐰","🐲","🐍",
            "🐴","🐑","🐵","🐔","🐕","🐷",
    ])
    static let sign = GameTheme(
        themeColor: .blue,
        cardContents: [
            "🆎","🚸","✅","🅿️","🟤","🟪",
            "♣️","♥️","🔱","💮","🧡","💝",
    ])
    static let food = GameTheme(
        themeColor: .red,
        cardContents: [
            "🍎","🍊","🍋","🍉","🍓","🍑",
            "🥥","🍆","🥑","🥕","🧄","🌶",
    ])
    
    static let balls = GameTheme(
        themeColor: .primary,
        cardContents: [
            "⚽️","🏀","🏈","⚾️","🥎","🏉",
            "🥏","🎱","🪀","🏓","⛳️","🥍",
    ])
    static let transports = GameTheme(
        themeColor: .yellow,
        cardContents: [
            "🚗","🚕","🚙","🚌","🏎","🚎",
            "🚓","🚑","🚒","🚐","🚚","🚛",
    ])
}
