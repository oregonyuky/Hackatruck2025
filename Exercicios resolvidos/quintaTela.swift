//
//  quintaTela.swift
//  SheetView
//
//  Created by Turma01-5 on 04/07/25.
//

import SwiftUI

struct quintaTela: View {
    var nome: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(nome)
                .font(.largeTitle)
            
            Text("Bem-vindo, \(nome)")
        }
        .padding()
    }
}
