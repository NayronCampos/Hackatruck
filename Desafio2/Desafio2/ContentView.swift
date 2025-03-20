//
//  ContentView.swift
//  Desafio2
//  Nayron Campos
//  Created by Turma02-25 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("foto-caminhao-hackatruck_0")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle)
                    .padding()
                VStack(spacing: 10) {
                    
                    Text("Hackatruck")
                        .foregroundColor(.red)
                    Text("77 Universidades")
                        .foregroundColor(.blue)
                    Text("5 Região do Brasil")
                        .foregroundColor(.orange)
                }
                .padding()
            }
            }
        }
    }
        
}

#Preview {
    ContentView()
}
