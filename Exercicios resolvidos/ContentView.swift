//
//  ContentView.swift
//  SheetView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mostrarSheet = false
    @State private var nome = ""
    @State private var sobrenome = ""
    var body: some View {
        VStack {
            NavigationStack{
                VStack{
                    NavigationLink(destination: segundaTela(nome: $nome, sobrenome: $sobrenome)){
                        Text("Modo 1")
                            .frame(maxWidth: 100)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: terceiraTela(nome: nome)){
                        Text("Modo 2")
                            .frame(maxWidth: 100)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        mostrarSheet = true
                    }){
                        Text("Modo 3")
                            .frame(maxWidth: 100)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .sheet(isPresented: $mostrarSheet) {
                    quartaTela(nome: nome, sobrenome: sobrenome)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
