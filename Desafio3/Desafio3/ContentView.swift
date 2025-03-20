//
//  ContentView.swift
//  Desafio3
//  Nayron Campos
//  Created by Turma02-25 on 19/03/25.

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var name: String = ""
    var body: some View {
        VStack {
            ZStack{
                Image("foto-caminhao-hackatruck_0")
                    .resizable()
                    .frame(width:800, height: 900)
                    .opacity(0.2)
                
                ZStack{
                    VStack{
                        Spacer()
                            .frame(height: 30)
                        
                            Text("Fala jovem, su name is:")
                            TextField("your name",text: $name)
                                .foregroundColor(.black)
                                .frame(width: 100)
                        
                        Spacer()
                            .frame(height: 200)
                        
                        Image("logo")
                            .resizable()
                            .frame(width:200 , height: 100)
                        Spacer()
                        .frame(height: 10)

                        Image("truck")
                            .resizable()
                            .frame(width: 200, height: 100)
                        
                        Spacer()
                            .frame(height: 259)
                        
                                Button("Entrar") {
                                    showingAlert = true
                                }
                                .alert(isPresented:$showingAlert) {
                                    Alert(
                                        title: Text("ALERTA!"),
                                        message: Text("Você irá iniciar o curso agora! Deseja continuar?"),
                                        primaryButton: .destructive(Text("Continuar")) {
                                            print("Deleting...")
                                        },
                                        secondaryButton: .cancel()
                                    )
                                
                            }
                        Spacer()
                            .frame(height:20)
                        
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
