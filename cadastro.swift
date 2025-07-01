import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var nome = ""
    @State private var idade = ""
    @State private var ra = ""
    @State private var mensagem = "Digite seu nome"
    
    // Lista de cadastrados
    @State private var cadastrados: [(nome: String, idade: String, ra: String)] = []

    var body: some View {å
        NavigationStack {
            VStack(spacing: 20) {
                Text(mensagem)
                    .font(.title)
                    .padding()

                TextField("Digite seu nome", text: $nome)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.default)

                TextField("Digite sua idade", text: $idade)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Digite seu RA", text: $ra)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                Button("Mostrar mensagem") {
                    if nome.isEmpty {
                        mensagem = "Você não digitou nenhum nome."
                    } else {
                        // Adiciona o novo usuário à lista de cadastrados
                        cadastrados.append((nome: nome, idade: idade, ra: ra))
                        mensagem = "Olá, \(nome)! Você tem \(idade) anos."
                        
                        // Limpa os campos após o cadastro
                        nome = ""
                        idade = ""
                        ra = ""  // Limpa o campo RA
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                // Novo botão que leva à tela de cadastrados
                NavigationLink("Ver Cadastrados", destination: ListaCadastradosView(cadastrados: $cadastrados))
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ListaCadastradosView: View {
    @Binding var cadastrados: [(nome: String, idade: String, ra: String)]
    
    var body: some View {
        VStack {
            Text("Lista de Cadastrados")
                .font(.largeTitle)
                .padding()
            
            List {
                ForEach(cadastrados, id: \.nome) { cadastro in
                    HStack {
                        Text(cadastro.nome)
                            .font(.headline)
                        Text(cadastro.idade)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text(cadastro.ra)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .onDelete(perform: removeItems)
            }
            .padding()
        }
        .navigationBarTitle("Cadastrados", displayMode: .inline)
    }
    
    private func removeItems(at offsets: IndexSet) {
        cadastrados.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
