//
//  Pokemon.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let height: Int
    let weight: Int
    let types: [PokemonTypeWrapper]
    let abilities: [AbilityWrapper]

    struct PokemonTypeWrapper: Codable {
        let type: NamedAPIResource
    }

    struct AbilityWrapper: Codable {
        let ability: NamedAPIResource
    }

    struct NamedAPIResource: Codable {
        let name: String
        let url: String
    }
}

struct PokemonListResponse: Codable {
    let results: [NamedAPIResource]
    struct NamedAPIResource: Codable {
        let name: String
        let url: String
    }
}
