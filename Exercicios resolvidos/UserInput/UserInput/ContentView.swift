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
    @State private var imagemURL: String = "https://en.wikipedia.org/wiki/Question_mark#/media/File:Arabic_Question_mark_(RTL).svg"
    var body: some View {
        ZStack{
            Color(corFundo)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Calculadora de velocidade")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding(.top, -17)
                Text("Digite a distancia (Km):")
                
                TextField("distancia", value: $km, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                Text("Digite o tempo (h):")
                
                TextField("distancia", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                Button("Calcular"){
                    kmh = Double(km)/Double(tempo)
                    if(kmh <= 9.9){
                        condicaoKMH = kmh
                        corFundo = "a"
                        imagemURL = "https://pt.wikipedia.org/wiki/Testudines#/media/Ficheiro:Green_sea_turtle_(Chelonia_mydas)_Moorea.jpg"
                    }else if(kmh >= 10 && kmh <= 29.9){
                        condicaoKMH = kmh
                        corFundo = "b"
                        imagemURL = "https://pt.wikipedia.org/wiki/Elefante#/media/Ficheiro:African_Bush_Elephant.jpg"
                    }else if(kmh >= 30 && kmh <= 69.9){
                        condicaoKMH = kmh
                        corFundo = "c"
                        imagemURL = "https://pt.wikipedia.org/wiki/Avestruz-comum#/media/Ficheiro:Ostriches_cape_point_cropped.jpg"
                    }else if(kmh >= 70 && kmh <= 89.9){
                        condicaoKMH = kmh
                        corFundo = "D"
                        imagemURL = "https://pt.wikipedia.org/wiki/Le%C3%A3o#/media/Ficheiro:020_The_lion_king_Snyggve_in_the_Serengeti_National_Park_Photo_by_Giles_Laurent.jpg"
                    }
                    else{
                        condicaoKMH = kmh
                        corFundo = "E"
                        imagemURL = "https://pt.wikipedia.org/wiki/Tigre#/media/Ficheiro:Panthera_tigris_tigris.jpg"
                    }
                }
                .padding()
                Text(String(condicaoKMH) + " km/h")
                    .padding()
                    .font(.title)
                    .fontWeight(.bold)
                AsyncImage(url: URL(string: imagemURL)) { image in
                    image
                        .resizable()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                    
                    
                } placeholder: {
                    ProgressView()
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.gray.opacity(0.2))
                        .frame(maxWidth: .infinity)
                        .padding()
                    VStack{
                        HStack{
                            Text("Tartaruga")
                            Text("(0-9.9km/h)")
                            Circle()
                                .fill(Color.green)
                                .frame(width: 20, height: 20)
                                .cornerRadius(4)
                        }
                        HStack{
                            Text("Elefante")
                            Text("(10-29.9km/h)")
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 20, height: 20)
                                .cornerRadius(4)
                        }
                        HStack{
                            Text("Avestruz")
                            Text("(30-69.9km/h)")
                            Circle()
                                .fill(Color.orange)
                                .frame(width: 20, height: 20)
                                .cornerRadius(4)
                        }
                        HStack{
                            Text("Guepardo")
                            Text("(70-89.9km/h)")
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 20, height: 20)
                                .cornerRadius(4)
                            
                        }
                        HStack{
                            Text("Tartaruga")
                            Text("(90-130km/h)")
                            Circle()
                                .fill(Color.red)
                                .frame(width: 20, height: 20)
                                .cornerRadius(4)
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
