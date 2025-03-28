//
//  Model.swift
//  desafio10
//
//  Created by Turma02-25 on 27/03/25.
//

/*  {
 "_id": "1d267f724de31e5c60d6911401bbfe50",
 "_rev": "1-80d9c1865132ba039aecf08b53951e4c",
 "Nome": "Berlim",
 "Gênero": "Drama, Crime",
 "Imagem": "https://lorena.r7.com/categoria/cinema-tv/Netflix-compartilha-poster-da-nova-serie-Berlim",
 "Ano de lançamento": "2023",
 "Número de temporadas": "1 (em andamento)",
 "Sinopse": "Spin-off de 'La Casa de Papel', foca em Berlim e seus grandes assaltos antes dos eventos da série principal."
}*/

import Foundation

struct Serie: Decodable, Hashable{
//    let _id: String
//    let _rev: String?
    let Name: String?
    let Gender: String?
    let Image: String?
    let Ano_de_lançamento: Int?
    let Número_de_estações: Int?
    let Sinopse: String?
    
}
