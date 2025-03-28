//
//  ViewModel.swift
//  Desafio9
//
//  Created by Turma02-25 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var watch: [Serie] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/LeituraNayron") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error
            in
            guard let data = data, error == nil else{
                return
            }
         
            do{
                let parsed = try JSONDecoder().decode([Serie].self, from: data)
                
                DispatchQueue.main.async{
                    self?.watch = parsed
                }
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
