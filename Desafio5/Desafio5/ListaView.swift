//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-25 on 21/03/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack{
            List{
                
                NavigationLink(destination:RosaView()){
                    Text("Item")
                    Image(systemName: "paintbrush.fill")
                }
                
                NavigationLink(destination:AzulView()){
                    Text("Item")
                    Image(systemName: "paintbrush.pointed.fill")
                }
                NavigationLink(destination:CinzaView()){
                    Text("Item")
                    Image(systemName: "paintpalette.fill")
                   

                }
            }
            .navigationTitle("List")
        }
        
        
        }
    }


#Preview {
    ContentView()
}
