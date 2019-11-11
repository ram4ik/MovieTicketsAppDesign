//
//  ContentView.swift
//  MovieTicketsAppDesign
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MovieTicketApp: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
        HStack {
              ForEach(Ticket.data(), id: \.id) {  ticket in
                        GeometryReader { gr in
                       self.renderTicket(ticket, angle: gr.frame(in: .global).minX / -10)
                           }.frame(width: UIScreen.main.bounds.width)
                       }
                   }
               }.frame(minHeight: 0.0, maxHeight: .infinity)
               .background(Color("bg"))
               .edgesIgnoringSafeArea(.all)
    }
    
    func renderTicket(_ ticket: Ticket, angle: CGFloat) -> some View {
        return TicketView(ticket: ticket)
               .frame(width: UIScreen.main.bounds.width)
        .frame(minHeight: 0.0, maxHeight: .infinity)
         .rotation3DEffect(Angle(degrees: Double(angle)) , axis: (x: 0, y: 10.0, z: 0))
    }
}

struct MovieTicketApp_Previews: PreviewProvider {
    static var previews: some View {
        MovieTicketApp()
    }
}
