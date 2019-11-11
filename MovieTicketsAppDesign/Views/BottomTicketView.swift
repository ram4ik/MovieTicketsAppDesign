//
//  BottomTicketView.swift
//  MovieTicketsAppDesign
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct BottomTicketView: View {
    var body: some View {
         Image("Barcode")
                       .resizable()
                       .scaledToFit()
                       .padding(30)
                       .modifier(FullWidthModifier())
    }
}

struct BottomTicketView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTicketView()
    }
}
