//
//  AzulView.swift
//  TabView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Image(systemName: "cloud.rain.fill")
                .font(.title)
                .frame(width:100, height: 100)
        }
    }
}

#Preview {
    AzulView()
}
