//
//  Grid.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct Grid<Item,ItemView>: View
    where Item: Identifiable,
    ItemView: View
{
    internal init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var items:[Item]
    var viewForItem: (Item) -> ItemView
    var body: some View {
        ForEach(items) {item in
            self.viewForItem(item)
        }
    }
}
