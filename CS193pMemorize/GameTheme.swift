//
//  GameTheme.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct GameTheme {
    internal init(themeName:String,themeColor: Color, cardContents: [String]) {
        assert(cardContents.count >= 12)
        self.themeName = themeName
        self.themeColor = themeColor
        self.cardContents = cardContents
    }
    var themeName:String
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
            .transportation,
        ]
    }
    
    static let halloween = GameTheme(
        themeName: "halloween",
        themeColor: .orange,
        cardContents: [
            "🦑","👺","🍺","😈","🤡","👽",
            "💩","🦋","🐡","🌵","☀️","💧",
    ])
    
    static let animal = GameTheme(
        themeName: "animal",
        themeColor: .green,
        cardContents: [
            "🐭","🐮","🐯","🐰","🐲","🐍",
            "🐴","🐑","🐵","🐔","🐕","🐷",
    ])
    static let sign = GameTheme(
        themeName: "sign",
        themeColor: .blue,
        cardContents: [
            "🆎","🚸","✅","🅿️","🟤","🟪",
            "♣️","♥️","🔱","💮","🧡","💝",
    ])
    static let food = GameTheme(
        themeName: "food",
        themeColor: .red,
        cardContents: [
            "🍎","🍊","🍋","🍉","🍓","🍑",
            "🥥","🍆","🥑","🥕","🧄","🌶",
    ])
    
    static let balls = GameTheme(
        themeName: "balls",
        themeColor: .primary,
        cardContents: [
            "⚽️","🏀","🏈","⚾️","🥎","🏉",
            "🥏","🎱","🪀","🏓","⛳️","🥍",
    ])
    static let transportation = GameTheme(
        themeName: "transportation",
        themeColor: .yellow,
        cardContents: [
            "🚗","🚕","🚙","🚌","🏎","🚎",
            "🚓","🚑","🚒","🚐","🚚","🚛",
    ])
}
