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
    @State private var imge: String = ""
   

    var body: some View {
        
        ZStack{
            Color(corfund)
                .ignoresSafeArea()

            ZStack{
                
                VStack{
                    Spacer()
                  
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
                    Spacer()
                        .frame(height: 30)
                    Button("Calcular") {
                         calculo = valor1 + valor2
                        
                        
                        if(calculo>=0 && calculo<=9){
                            corfund = .n1
                            imge = "img1"
                        }
                        else if(calculo>=10 && calculo<=20){
                            corfund = .n2
                            imge = "im2"
                        }
                        else if(calculo>=21 && calculo<=30){
                            corfund = .n3
                            imge = "img3"
                        }
                        else if(calculo>=31 && calculo<=40){
                            corfund = .n4
                            imge = "img4"
                        }
                        else if(calculo>=41 && calculo<=50){
                            corfund = .n5
                            imge = "img5"
                        }
                        
                        
                    }
                    
                        Spacer()
                        
                            Text("Its a: \(calculo) ")
                            Spacer()
                                .frame(width: 10, height: 10)
                            
                            VStack{
                                Image(imge)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .scaledToFit()
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding()
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
                    Spacer()
                }
            }
        }
        
        
    }
    
}

#Preview {
    ContentView()
}
