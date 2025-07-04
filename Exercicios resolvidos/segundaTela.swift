//
//  segundaTela.swift
//  SheetView
//
//  Created by Turma01-5 on 04/07/25.
//
import SwiftUI

struct segundaTela: View {
    @Binding var nome: String
    @Binding var sobrenome: String

    var body: some View {
        Text("modo 1")
        ZStack{
            VStack(spacing: 16) {
                TextField("Nome", text: $nome)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                
                TextField("Sobrenome", text: $sobrenome)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
            }
            .padding()
        }
    }
}

