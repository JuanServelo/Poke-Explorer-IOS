//
//  Favorito.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//

import Foundation
import SwiftData

@Model
class Favorito {
    var id: UUID
    var pokemonId: Int
    var nome: String
    var imagemURL: String
    var usuarioEmail: String

    init(id: UUID = UUID(), pokemonId: Int, nome: String, imagemURL: String, usuarioEmail: String) {
        self.id = id
        self.pokemonId = pokemonId
        self.nome = nome
        self.imagemURL = imagemURL
        self.usuarioEmail = usuarioEmail
    }
}
