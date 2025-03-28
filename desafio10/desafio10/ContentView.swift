//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma02-25 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(.gray)
                
                VStack {
                   Text("SERIES")
                        .frame(alignment: .top)
                        .font(.system(
                            size: 35,
                            weight: .black
                        ))
                    
                    
                    
                    
                    ScrollView{
                        VStack{
                            ForEach(viewModel.watch, id: \.self){watch2 in
                                
                                
                                    HStack{
                                        AsyncImage(url: URL(string: watch2.Image!)) { image in
                                            image
                                                .resizable()
                                                .clipShape(Rectangle())
                                                .frame(width: 110, height: 110, alignment: .leading)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        
                                        Text(watch2.Name!)
                                        Text(watch2.Gender!)
                                        
                                            .foregroundColor(.white)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    .padding()

                            }
                            
                            
                            
                        }
                    }
                }
                .onAppear(){
                    viewModel.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

