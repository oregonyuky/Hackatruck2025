//
//  RosaView.swift
//  TabView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink.ignoresSafeArea(edges: .top)
            Image(systemName:
                    "sun.max.fill")
            .frame(width:300, height: 300)
            .font(.title)
            .background(.pink)
            .zIndex(1)
        }
    }
}

#Preview {
    RosaView()
}
