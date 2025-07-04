//
//  terceiraTela.swift
//  SheetView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct terceiraTela: View {
    var nome: String
    var body: some View {
        VStack(spacing: 20) {
            Text(nome)
                .font(.largeTitle)
            
            Text("Bem-vindo, \(nome)")
            
            NavigationStack{
                NavigationLink(destination: quintaTela(nome: nome)){
                    Text("Volte, \(nome)!!")
                }
            }
        }
        .padding()
    }
}
