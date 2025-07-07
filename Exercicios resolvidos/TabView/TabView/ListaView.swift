//
//  ListaView.swift
//  TabView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        List{
            HStack {
                Text("Item")
                    .font(.headline)
                Spacer()
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width:20, height:20)
                    .scaledToFit()
            }
            HStack {
                Text("Item")
                    .font(.headline)
                Spacer()
                Image(systemName: "cloud.rain.fill")
                    .resizable()
                    .frame(width:20, height:20)
                    .scaledToFit()
            }
            HStack {
                Text("Item")
                    .font(.headline)
                Spacer()
                Image(systemName: "book.closed")
                    .resizable()
                    .frame(width:20, height:20)
                    .scaledToFit()
            }
        }
    }
}
#Preview {
    ListaView()
}
