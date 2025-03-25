//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma02-25 on 24/03/25.
//

import SwiftUI

struct ContentView: View {
    
    struct Song: Identifiable{
        
        var id: Int
        var name: String
        var artist: String
        var capa: String
    }
    var arrayMusicas = [
        Song(id: 1, name: "Oi balde", artist: "Zé Neto", capa: "https://tucurui.ifpa.edu.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png"),
        
        Song(id: 2, name: "Pulando o muro", artist: "Zé Neto", capa: "https://i.pinimg.com/1200x/40/f8/c5/40f8c59df6cbbfdf72da26756d45cbef.jpg"),
        
        Song(id: 3, name: "Oi balde", artist: "Zé Neto", capa: "https://tucurui.ifpa.edu.br/images/phocagallery/galeria2/thumbs/phoca_thumb_l_image03_grd.png"),
        
        Song(id: 4, name: "Pulando o muro", artist: "Zé Neto", capa: "https://i.pinimg.com/1200x/40/f8/c5/40f8c59df6cbbfdf72da26756d45cbef.jpg")
       
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                Image("back_green")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    
                    
                    
                    Image("capa")
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 200,height: 200)
                    Text("Playlist bom")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(
                            size: 32,
                            weight: .heavy
                        ))
                    
                    
                    HStack{
                        Image("caminhao")
                            .resizable()
                            .clipShape(Rectangle())
                            .frame(width: 20,height: 20)
                        
                        Text("The playlist of your life")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(
                                size: 18,
                                weight: .ultraLight
                            ))
                    }
                    ForEach(arrayMusicas) { element in
                        NavigationLink(destination: SecondView()){
                            
                            HStack{
                                
                                
                                AsyncImage(url: URL(string: element.capa)) { image in
                                    image.resizable()
                                        .clipShape(.rect(cornerRadius: 3))
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 55, height: 55)
                                .padding (.bottom, 20)
                                VStack{
                                    
                                    Text(element.name)
                                    Text(element.artist)
                                    
                                }
                                .foregroundColor(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                
                                .foregroundColor(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                
                            }
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Spacer()
                    
                }
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
