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
    
   static  var allThemes:[GameTheme]
    {
        [
            .halloween
        ]
    }
    
    static let halloween = GameTheme(
        themeColor: .orange,
        cardContents: [
        "🦑","👺","🍺","😈","🤡","👽",
        "💩","🦋","🐡","🌵","☀️","💧",
        ])
}
