//
//  CinzaView.swift
//  TabView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea(edges: .top)
            Image(systemName: "book.closed")
                .font(.title)
                .frame(width:100, height: 100)
        }
    }
}

#Preview {
    CinzaView()
}
