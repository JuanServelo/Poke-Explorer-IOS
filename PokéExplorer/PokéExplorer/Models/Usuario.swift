//
//  Usuario.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//

import Foundation
import SwiftData

@Model
class Usuario {
    var id: UUID
    var nomeDeUsuario: String
    var email: String
    var senha: String

    init(id: UUID = UUID(), nomeDeUsuario: String, email: String, senha: String) {
        self.id = id
        self.nomeDeUsuario = nomeDeUsuario
        self.email = email
        self.senha = senha
    }
}
