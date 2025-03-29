import SwiftUI
import MapKit

struct Location: Hashable {
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
    
    @State private var selectedLocation = Location(nome: "Rio de Janeiro", foto: "", descricao: "", latitude: -22.90682, longitude: -43.1729)
    
    let arrayLocation = [
        Location(nome: "Rio de Janeiro", foto: "https://wamcomercializacao.com/wp-content/uploads/2022/07/Banner_1-1024x680.jpg", descricao: "Famosa por suas belas praias, o Cristo Redentor e o Pão de Açúcar.", latitude: -22.90682, longitude: -43.1729),
        Location(nome: "São Paulo", foto: "https://www.zapimoveis.com.br/blog/wp-content/uploads/2023/12/cidade-de-sao-paulo.jpg", descricao: "Maior cidade do Brasil, conhecida pela sua cultura, gastronomia e negócios.", latitude: -23.5505, longitude: -46.6333),
        Location(nome: "Salvador", foto: "https://cdn.ibahia.com/img/Facebook/320000/1210x720/Voce-conhece-Salvador-Mapa-mostra-onde-comeca-e-te0032360100202408050941-3.webp?fallback=https%3A%2F%2Fcdn.ibahia.com%2Fimg%2FFacebook%2F320000%2FVoce-conhece-Salvador-Mapa-mostra-onde-comeca-e-te0032360100202408050941.jpg%3Fxid%3D1643923&xid=1643923", descricao: "Famosa pelo carnaval, pelas suas praias e pelo Pelourinho, centro histórico da cidade.", latitude: -12.9714, longitude: -38.5014),
        Location(nome: "Florianópolis", foto: "https://static.ndmais.com.br/2023/03/florianopolis-aerea-scaled.jpg", descricao: "Cidade litorânea conhecida por suas belas praias e como destino turístico popular.", latitude: -27.5954, longitude: -48.5480),
        Location(nome: "Curitiba", foto: "https://upload.wikimedia.org/wikipedia/commons/1/19/Jardim_Bot%C3%A2nico_Centro_Curitiba.jpg", descricao: "Famosa por seu planejamento urbano, parques e clima frio.", latitude: -25.4296, longitude: -49.2711),
        Location(nome: "Manaus", foto: "https://upload.wikimedia.org/wikipedia/commons/7/76/Praia_da_Ponta_Negra_%28Manaus%29.jpg", descricao: "Capital da Amazônia, famosa pela floresta tropical e o Encontro das Águas.", latitude: -3.1190, longitude: -60.2449),
        Location(nome: "Fortaleza", foto: "https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/praia-de-meireles-e1482425853260.jpg", descricao: "Cidade do nordeste, famosa pelas suas praias e pelo vibrante clima carnavalesco.", latitude: -3.7172, longitude: -38.5437),
        Location(nome: "Recife", foto: "https://www.viagensecaminhos.com/wp-content/uploads/2014/05/recife-pe.jpg", descricao: "Conhecida por seu carnaval, suas praias e o bairro histórico do Recife Antigo.", latitude: -8.0476, longitude: -34.8770)
    ]
    
    @State private var showingSheet = false
    
    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach(arrayLocation, id: \.self) { location in
                    Annotation(location.nome, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                        Button {
                            selectedLocation = location
                            showingSheet = true
                        } label: {
                            Image(systemName: "mappin.and.ellipse.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                    }
                }
            }
            .ignoresSafeArea()
            
            .sheet(isPresented: $showingSheet) {
                LocationDetailView(location: $selectedLocation)
            }
            
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Picker(selectedLocation.nome, selection: $selectedLocation) {
                        ForEach(arrayLocation, id: \.self) { location in
                            Text(location.nome)
                        }
                    }
                    .onChange(of: selectedLocation) { newLocation in
                        // Atualizando a posição do mapa ao selecionar a cidade no Picker
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: newLocation.latitude, longitude: newLocation.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                            )
                        )
                    }
                }
                
                Spacer().frame(height: 620)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 9.0)
                        .foregroundColor(.white)
                        .opacity(0.4)
                        .frame(width: 250, height: 60)
                    Text("Maravilhas do mundo moderno")
                }
            } // Fim VStack
        } // Fim ZStack
    }
}

struct LocationDetailView: View {
    @Binding var location: Location
    
    var body: some View {
        VStack(alignment: .center) {
            
            AsyncImage(url: URL(string: location.foto)){ image in
                image
                    .resizable()
                    .frame(width: 300, height: 300)
            }
        placeholder: {
            ProgressView()
        }
            Text(location.nome)
                .font(.title)
                .padding()
            
            Text(location.descricao)
                .padding()
            
            
        }
    }
}

#Preview {
    ContentView()
}
