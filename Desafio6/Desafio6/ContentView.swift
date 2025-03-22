//
//  ContentView.swift
//  Desafio6
//  Nayron Campos
//  Created by Turma02-25 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color(.darkGray)
                    .ignoresSafeArea()
                
                VStack{
                    Image("logo-topo")
                        .resizable()
                        .frame(width: 280, height: 130)
                    
                    Spacer()
                        .frame(height: 100)
                    
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 9.0)
                                .foregroundColor(.pink)
                                .frame(width: 200, height: 90)
                            Text("Modo 1")
                                .foregroundColor(.white)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 9.0)
                                .foregroundColor(.pink)
                                .frame(width: 200, height: 90)
                            Text("Modo 2")
                                .foregroundColor(.white)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 9.0)
                                .foregroundColor(.pink)
                                .frame(width: 200, height: 90)
                            Text("Modo 3")
                                .foregroundColor(.white)
                        }
                        Spacer()
                            .frame(height:200)
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
