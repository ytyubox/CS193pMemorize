//
//  Cardify.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/6/4.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI
struct Cardify: ViewModifier {
    
    
    
    
    let isFaceUp:Bool
    let color:Color
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeWidth)
                    .fill(linearGradient)
                    .opacity(0.4)
                content
            }else {
                back()
            }
        }
    }
        
    
    
    
    @ViewBuilder
    private func back() -> some View {
        RoundedRectangle(cornerRadius: cornerRadius).fill(
            linearGradient
        )
    }
    private let cornerRadius:CGFloat = 10
    private let edgeWidth:CGFloat = 3
    private var linearGradient:LinearGradient {
        LinearGradient(gradient: Gradient(colors: [
            color.opacity(0.5),
            color,
        ]),
                       startPoint: .top,
                       endPoint: .bottom)
    }
}
