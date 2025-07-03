//
//  ContentView.swift
//  UserInput
//
//  Created by Turma01-5 on 03/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var km = 0
    @State private var tempo = 0
    @State private var kmh: Double = 0
    @State private var corFundo: String = ""
    @State private var condicaoKMH: Double = 0
    @State private var imagemNome: String = "interrogacao"

    var body: some View {
        ZStack {
            Color(corFundo)
                .edgesIgnoringSafeArea(.all)

            VStack {
                

                Text("Digite a distancia (Km):")

                TextField("distancia", value: $km, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)

                Text("Digite o tempo (h):")

                TextField("tempo", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)

                Button("Calcular") {
                    kmh = Double(km) / Double(tempo)
                    condicaoKMH = kmh

                    switch kmh {
                    case ..<10:
                        corFundo = "a"
                        imagemNome = "tartaruga"
                    case 10..<30:
                        corFundo = "b"
                        imagemNome = "elefante"
                    case 30..<70:
                        corFundo = "c"
                        imagemNome = "avestruz"
                    case 70..<90:
                        corFundo = "d"
                        imagemNome = "guepardo"
                    default:
                        corFundo = "e"
                        imagemNome = "tigre"
                    }
                }
                .padding()

                Text(String(format: "%.1f km/h", condicaoKMH))
                    .padding()
                    .font(.title)
                    .fontWeight(.bold)

                Image(imagemNome)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())

                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.gray.opacity(0.2))
                        .frame(maxWidth: .infinity)
                        .padding()

                    VStack {
                        HStack {
                            Text("Tartaruga")
                            Text("(0-9.9km/h)")
                            Circle()
                                .fill(Color.green)
                                .frame(width: 20, height: 20)
                        }
                        HStack {
                            Text("Elefante")
                            Text("(10-29.9km/h)")
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 20, height: 20)
                        }
                        HStack {
                            Text("Avestruz")
                            Text("(30-69.9km/h)")
                            Circle()
                                .fill(Color.orange)
                                .frame(width: 20, height: 20)
                        }
                        HStack {
                            Text("Guepardo")
                            Text("(70-89.9km/h)")
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 20, height: 20)
                        }
                        HStack {
                            Text("Tigre")
                            Text("(90-130km/h)")
                            Circle()
                                .fill(Color.red)
                                .frame(width: 20, height: 20)
                        }
                    }
                    .font(.footnote)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
