//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma01-5 on 02/07/25.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/4/40/Megadeth_-_Peace_Sells..._But_Who%27s_Buying-.jpg"))
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("Regiao do Brasil")
                    .foregroundStyle(.yellow)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView1()
}
