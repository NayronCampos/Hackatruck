//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-25 on 21/03/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        
        
        ZStack{
            Color(.blue)
                .edgesIgnoringSafeArea(.top)
            ZStack{
                
                Circle()
                    .frame(width: 300)
                Image(systemName: "paintbrush.pointed.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 132))
                
            }
        }
    }
}

#Preview {
    ContentView()
}
