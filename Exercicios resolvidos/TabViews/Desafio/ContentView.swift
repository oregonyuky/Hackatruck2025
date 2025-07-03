//
//  ContentView.swift
//  Desafio
//
//  Created by Turma01-5 on 02/07/25.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI
struct ContentView: View{
    var body: some View{
        VStack{
            HStack{
                Color.red
                .frame(width: 100, height: 100)
                Spacer()
                Color.blue
                    .frame(width: 100, height: 100)
            }
            Spacer()
            HStack{
                Color.green
                    .frame(width: 100, height: 100)
                Spacer()
                Color.yellow
                    .frame(width: 100, height: 100)
                    
            }
            .padding()
        }
        .padding()
    }
}
#Preview{
    ContentView()
}
