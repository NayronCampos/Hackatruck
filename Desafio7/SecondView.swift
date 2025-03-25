//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-25 on 21/03/25.
//

import SwiftUI

struct SecondView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack{
            Color(.darkGray)
                .ignoresSafeArea()
            
                
                
                VStack{
                    Spacer()
                        .frame(height: 0)
                            Text("Modo 1")
                        .font(.title)
                            Spacer()
                        .frame(height: 100)
                    ZStack{
                        RoundedRectangle(cornerRadius: 9.0)
                            .foregroundColor(.pink)
                            .frame(width: 250, height: 140)
                            
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            TextField("your name",text: $name)
                                .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 100)
                            
                        
                    }
                    
                }
            
            
        }
    }
}


#Preview {
    ContentView()
}
