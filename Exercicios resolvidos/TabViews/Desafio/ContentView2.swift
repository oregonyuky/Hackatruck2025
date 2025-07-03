import SwiftUI

struct ContentView2: View {
    @State private var nome = ""
    @State private var showingAlert = false

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            Text("Bem vindo, Fulano")
                .font(.title)
                .position(x: UIScreen.main.bounds.width / 2, y: 60)
                .zIndex(1)
            TextField("Digite o nome", text: $nome)
                .padding()
                .frame(width: 250)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .position(x: UIScreen.main.bounds.width / 2, y: 200)
                .zIndex(1)
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/4/40/Megadeth_-_Peace_Sells..._But_Who%27s_Buying-.jpg")) { image in
                image
                    .resizable()
                    
                    
            } placeholder: {
                ProgressView()
            }
            .position(x: UIScreen.main.bounds.width / 2, y: 350)
            Button("Entrar") {
                if !nome.isEmpty {
                    showingAlert = true
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .position(
                x: UIScreen.main.bounds.width / 2,
                y: UIScreen.main.bounds.height - 90
            )
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("ALERTA!"),
                    message: Text("Seu nome é \(nome)"),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
    }
}

#Preview {
    ContentView2()
}
