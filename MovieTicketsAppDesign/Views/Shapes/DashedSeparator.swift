//
//  DashedSeparator.swift
//  MovieTicketsAppDesign
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DashedSeperator: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.origin.y ))
        path.closeSubpath()
        return path
    }
}
