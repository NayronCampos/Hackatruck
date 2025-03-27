//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma02-25 on 26/03/25.
//

import SwiftUI

struct ViewSecondd: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(.fundo)
                
               
                    }
                
                
            
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ViewSecondd()
}

