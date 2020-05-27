//
//  ContentView.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/27.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUP: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUP:Bool
    var body: some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("🦑")
            }else {
                RoundedRectangle(cornerRadius: 10).fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
