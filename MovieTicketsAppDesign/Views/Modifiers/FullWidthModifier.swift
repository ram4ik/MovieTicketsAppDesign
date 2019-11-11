//
//  FullWidthModifier.swift
//  MovieTicketsAppDesign
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct FullWidthModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(minWidth: 0.0, maxWidth: .infinity)
    }
}
