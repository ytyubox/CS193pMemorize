//
//  GemetoryView.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

protocol GeometryView: View {
    associatedtype GeoedView:View
    func body(size: CGSize) -> GeoedView
}
extension GeometryView {
    var body: some View {
        GeometryReader { geometry in
            self.body(size: geometry.size)
        }
    }
}
