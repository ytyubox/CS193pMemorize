//
//  View+Cardify.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/6/4.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI
extension View {
    func cardify(isFaceUp:Bool, color:Color) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp, color: color))
    }
}
