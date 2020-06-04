//
//  Pie.swift
//  CS193pMemorize
//
//  Created by 游宗諭 on 2020/6/4.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct Pie:Shape {
    
    var startAngle:Angle
    var endAngle:Angle
    var clockwise = false
    
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let radius = min(rect.width, rect.height) / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let x = center.x + radius * cos(CGFloat(startAngle.radians))
        let y = center.y + radius * sin(CGFloat(startAngle.radians))
        let start = CGPoint(
            x: x,
            y: y)
        
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(
            center: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: clockwise
        )
        p.addLine(to: center)
        
        return p
    }
    
}

struct Pie_Previews: PreviewProvider {
    static var previews: some View {
        Pie(startAngle: .zero, endAngle: .init(degrees: 110))
    }
}
