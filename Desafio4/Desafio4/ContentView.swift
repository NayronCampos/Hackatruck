//
//  ContentView.swift
//  Desafio4
//  Nayron
//  Created by Turma02-25 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var valor1: Int = 0
    @State private var valor2: Int = 0
    @State private var calculo: Int = 0
    @State private var corfund: Color = Color(.n1)

    var body: some View {
        
        ZStack{
            Color(.gray)
                .ignoresSafeArea()

            ZStack{
                
                VStack{
                    Spacer()
                    let calculo = valor1 + valor2
                    
                    
                    
                    VStack (alignment: .center){
                        
                        Text("Digite:")
                        TextField("number 1", value: $valor1, format: .number)
                            .frame(width: 100)
                            .keyboardType(.decimalPad)
                            .textContentType(.oneTimeCode)
                            .padding()
                            .cornerRadius(10)
                            .background(Color.black.opacity(0.2))
                    }
                    VStack {
                        
                        Text("Digite:")
                        TextField("number 2", value: $valor2, format: .number)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .keyboardType(.decimalPad)
                            .textContentType(.oneTimeCode)
                            .padding()
                            .background(Color.black.opacity(0.2))
                    }
                    
                    if(calculo==0){
                        Spacer()
                            
                            .frame(height: 40)
                        Text("Its a: \(calculo) ")
                        Spacer()
                            .frame(width: 10, height: 10)
                        
                        VStack{
                            Image("img1")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }
                    else if(calculo==1){
                        Text("Its a: \(calculo) ")
                        Spacer()
                        
                            .frame(width: 10, height: 10)
                        
                        VStack{
                            Image("im2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }
                    else if(calculo==2){
                        Text("Its a: \(calculo) ")
                        Spacer()
                        
                            .frame(width: 10, height: 10)
                        
                        VStack{
                            Image("im2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                    else if(calculo==3){
                        Text("Its a: \(calculo) ")
                        Spacer()
                        
                            .frame(width: 10, height: 10)
                        
                        VStack{
                            Image("im2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }
                    
                    VStack{
                        
                        Text("Tempo médio dos developers:\n P1: ( 00:00 minutes)\n P2: ( 00:00 minutes)\n P3: ( 00:00 minutes)\n P4: ( 00:00 minutes)\n P5: ( 00:00 minutes)")
                            .multilineTextAlignment(.center)
                            .background(.black)
                            .foregroundColor(.white)
                            .font(.system(
                                size: 22,
                                weight: .ultraLight
                            ))
                    }
                }
            }
        }
        
        
    }
    
}

#Preview {
    ContentView()
}
