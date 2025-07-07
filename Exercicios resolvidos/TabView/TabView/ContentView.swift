//
//  ContentView.swift
//  TabView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .badge(2)
                .tabItem{
                    Label("sol", systemImage: "sun.max.fill" )
                }
            AzulView()
                .tabItem(){
                    Label("Azul", systemImage: "cloud.rain.fill")
                }
            CinzaView()
                .tabItem(){
                    Label("Cinza", systemImage: "book.closed")
                }
            ListaView()
                .tabItem(){
                    Label("Lista", systemImage: "list.bullet.clipboard")
                }
        }
    }
}

#Preview {
    ContentView()
}
