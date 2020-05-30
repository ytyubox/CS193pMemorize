//
//  Array+Only.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/5/28.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
