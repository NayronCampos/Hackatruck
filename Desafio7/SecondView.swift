//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-25 on 21/03/25.
//

import SwiftUI

struct SecondView: View {
    
    @State var musica : Song
   // @State var musica2 : sugs
    
    var body: some View {
        
        ZStack {
                Image("back_green")
                    .resizable()
                    .ignoresSafeArea()
           
            VStack {
                Spacer()
                    .frame(height: 200)
                Text("Playlist bom")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .bottom)
                    .font(.system(
                        size: 25,
                        weight: .heavy
                    ))
                
                VStack {
                    AsyncImage (url: URL(string: musica.capa)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    
                    .frame(width: 350, height: 350)
                    .padding()
    
                }
                VStack{
                    
                    Text(musica.name)
                    
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .font(.system(size: 28, weight: .heavy))
               
                VStack{
                    
                    Text(musica.artist)
                    
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .font(.system(size: 20))
               
                Text("_____")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                
                HStack{
                    
                    Image(systemName: "arrowtriangle.backward")
                    Text("  ")
                    Image(systemName: "play.fill")
                    Text("  ")
                    Image(systemName: "arrowtriangle.right")
                    
                }
                .font(.system(size: 50))
                .foregroundColor(.white)
                Spacer()
                    .frame(height: 290)
                
            }
           
        }
        
        

    }
}

#Preview {
    ContentView()
}
