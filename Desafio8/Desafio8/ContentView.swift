//
//  ContentView.swift
//  Desafio8
//
//  Created by Turma02-25 on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
   
}

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -22.90682, longitude: -43.1729), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @State var loc =   Location( nome: "Rio de Janeiro", foto: "https://www.google.com/search?q=rio+de+janeiro+imagem&tbm=isch", descricao: "Famosa por suas belas praias, o Cristo Redentor e o Pão de Açúcar.",latitude: -22.90682, longitude: -43.1729)
    
    let (arrayLocation) = [
        Location( nome: "Rio de Janeiro", foto: "https://www.google.com/search?q=rio+de+janeiro+imagem&tbm=isch", descricao: "Famosa por suas belas praias, o Cristo Redentor e o Pão de Açúcar.",latitude: -22.90682, longitude: -43.1729),
        
        Location( nome: "São Paulo", foto: "https://www.google.com/search?q=sao+paulo+imagem&tbm=isch", descricao: "Maior cidade do Brasil, conhecida pela sua cultura, gastronomia e negócios.", latitude:-23.5505, longitude: -46.6333),
                 
        Location( nome: "Salvador", foto: "https://www.google.com/search?q=salvador+imagem&tbm=isch", descricao: "Famosa pelo carnaval, pelas suas praias e pelo Pelourinho, centro histórico da cidade.", latitude:-12.9714, longitude:-38.5014),
        
        Location( nome: "Florianópolis", foto: "https://www.google.com/search?q=florianopolis+imagem&tbm=isch", descricao: "Cidade litorânea conhecida por suas belas praias e como destino turístico popular.", latitude:-27.5954, longitude: -48.5480),
        
        Location( nome: "Curitiba", foto: "https://www.google.com/search?q=curitiba+imagem&tbm=isch", descricao: "Famosa por seu planejamento urbano, parques e clima frio.",latitude:-25.4296, longitude: -49.2711),
        
        Location( nome: "Manaus", foto: "https://www.google.com/search?q=manaus+imagem&tbm=isch", descricao: "Capital da Amazônia, famosa pela floresta tropical e o Encontro das Águas.",latitude:-3.1190, longitude: -60.2449),
        
        Location( nome: "Fortaleza", foto: "https://www.google.com/search?q=fortaleza+imagem&tbm=isch", descricao: "Cidade do nordeste, famosa pelas suas praias e pelo vibrante clima carnavalesco.",latitude:-3.7172, longitude: -38.5437),
        
            Location( nome: "Recife", foto: "https://www.google.com/search?q=recife+imagem&tbm=isch", descricao: "Conhecida por seu carnaval, suas praias e o bairro histórico do Recife Antigo.",latitude:-8.0476, longitude: -34.8770)
        ]

    
    
    var body: some View {
        ZStack{
            Map(position: $position) {
                ForEach(arrayLocation, id: \.self) { location in
                    Annotation(location.nome, coordinate:  CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "mappin.and.ellipse.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                    }
                }
            }
            .ignoresSafeArea()
            VStack{
                
                
                ZStack{
                    
                    Picker(loc.nome, selection: $loc ){
                        ForEach(arrayLocation, id: \.self) { location in
                            Text(location.nome)
                        }
                        
                    }//onChange{mudar o position}
                    
                }
                Spacer()
                    .frame(height: 620)
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 9.0)
                        .foregroundColor(.gray)
                        .frame(width: 250, height: 60)
                        Text("Maravilhas do mundo moderno")
                    
                }
            } // Fim VStack
        } // Fim ZStack
        
        
    }
}

#Preview {
    ContentView()
}
