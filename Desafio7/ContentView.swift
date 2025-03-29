//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma02-25 on 24/03/25.
//

import SwiftUI

struct Song1: Identifiable{
    
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
struct sugs2: Identifiable{
    var id: Int
    var sugestao: String
    var nome: String
}

struct ContentView: View {
    
    var arrayMusicas = [
        Song(id: 1, name: "Lingua doce", artist: "Leo Santana", capa: "https://blog.artsoul.com.br/wp-content/uploads/2022/05/Captura-de-tela-2022-05-26-105614.jpg"),
        
        Song(id: 2, name: "No sigilo e vou embora", artist: "Leo e elas", capa: "https://upload.wikimedia.org/wikipedia/commons/3/39/Barrett%27s_Santa_Fe_Suite.jpg"),
        
        Song(id: 3, name: "Marrento cheiroso", artist: "Leo santana", capa: "https://static.todamateria.com.br/upload/pr/im/primeiraaquarelaabstrata-cke.jpg"),
        
        Song(id: 4, name: "Maravilhosa é ela", artist: "Leo Santana", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqXikeu3YrF1ijM0X-iyupmIkuEXQYhQLFLD7lrjBCoZ9NxFEUcdjCiVB6DXy24YdNvh0&usqp=CAU"),
        
        Song(id: 5, name: "Tome tome", artist: "Léo Santana", capa: "https://i.pinimg.com/originals/91/45/d6/9145d605e63a91d5f5f8f672fd270497.png"),
        
        Song(id: 6, name: "Rainha", artist: "Leo Santana", capa: "https://laart.art.br/wp-content/uploads/2020/02/oqueearteabstrata3.jpg"),
       
        Song(id: 7, name: "Pulando o muro", artist: "Zé Neto", capa: "https://i.pinimg.com/736x/15/5a/89/155a89b0725f45e733a95d83d9a9174b.jpg"),
        
        Song(id: 8, name: "Body splash", artist: "Leo Pereira", capa: "https://cdn.pixabay.com/photo/2022/02/05/08/58/abstract-art-6994324_1280.png")
    ]
    
    var arraySug = [
        sugs( id: 0, sugestao: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwgnfjCM8XpiYY0qYJXdV7YHnzfTHkp-tZIw&s", nome: "As brabas"),
        sugs( id: 1, sugestao: "https://www.gerarmemes.com.br/uploads/galeria/meme-478-chloe-gerador-de-memes.jpg", nome: "Top musicas"),
        sugs( id: 2, sugestao: "https://i.pinimg.com/564x/99/a2/32/99a232ea98d2d0005d5d248749273895.jpg", nome: "Ziro pacient"),
        sugs( id: 3, sugestao: "https://yt3.googleusercontent.com/M6OZ5A6SxDGZbzvhp0HaMR9AaKgxK-0wPcRs4F9nDFij1ht4f3biY4oo76bIbvtcuoJintTNVg=s900-c-k-c0x00ffffff-no-rj",nome: "Album de swift")
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
                    Text("Playlist")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(
                            size: 35,
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
                                size: 24,
                                weight: .ultraLight
                            ))
                    }
                    
                    
                    ScrollView{
                        ForEach(arrayMusicas) { element in
                            NavigationLink(destination: SecondView(musica: element)){
                                VStack(alignment: .leading){
                                    HStack{
                                        
                                        
                                        AsyncImage(url: URL(string: element.capa)) { image in
                                            image.resizable()
                                                .clipShape(.rect(cornerRadius: 3))
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 55, height: 55)
                                        // .padding (.bottom, 20)
                            
                                        VStack(alignment: .leading){
                                            
                                            Text(element.name)
                                            Text(element.artist)
                                        }
                                        .foregroundColor(.white)
                                       // .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        Text("...")
                                            .foregroundColor(.white)
                                         //   .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        
                                    }
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .padding(.horizontal)
                                    
                                }
                            }
                            
                            
                        }
                    //    .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arraySug) { element in
                                    NavigationLink(destination: SugestaoView()){
                                        VStack{
                                            AsyncImage(url: URL(string: element.sugestao)) { image in
                                                image.resizable()
                                                .frame(width: 250, height: 250)
                                                    .clipShape(.rect(cornerRadius: 3))
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            
                                            Text(element.nome)
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
