//
//  quartaTela.swift
//  SheetView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct quartaTela: View {
    var nome: String
    var sobrenome: String
    var body: some View {
        VStack(spacing: 16){
            Text("modo 3")
            Text("\(nome)")
            Text("\(sobrenome)")
        }
    }
}
