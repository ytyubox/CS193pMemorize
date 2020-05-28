//
//  Grid.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct Grid<Item,ItemView>: View where
    Item: Identifiable,
    ItemView: View
{
    
    func body(for layout: GridLayout) -> some View {
        ForEach(items)
        {
            item in
            self.body(for: item,in:  layout)
        }
    }
    var body: some View
    {
        GeometryReader
            {
                geometry in
                self.body(for:
                    GridLayout(itemCount: self.items.count,
                               in: geometry.size)
                )
        }
    }
    
    func body(for item:Item, in layout: GridLayout) -> some View {
        let index = items.firstIndex(matching: item)!
       return  viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
    
    init(
        _ items: [Item],
        viewForItem: @escaping (Item) -> ItemView)
    {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var items:[Item]
    var viewForItem: (Item) -> ItemView
}
