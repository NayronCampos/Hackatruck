//
//  ContentView.swift
//  Desafio3
//  Nayron Campos
//  Created by Turma02-25 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
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
                            .frame(height: 10)
                        
                        Image("logo")
                            .resizable()
                            .frame(width:200 , height: 100)
                        Spacer()
                        .frame(height: 10)

                        Image("truck")
                            .resizable()
                            .frame(width: 200, height: 100)
                        
                        Spacer()
                            .frame(height: 250)
                        
                            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        Spacer()
                            .frame(height:80)
                        
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
