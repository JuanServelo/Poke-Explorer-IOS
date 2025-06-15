//
//  FavoritosViewModel.swift
//  PokéExplorer
//
//  Created by user276508 on 15/06/25.
//


import Foundationimport SwiftData@MainActorclass FavoritosViewModel: ObservableObject {    @Published var favoritos: [Favorito] = []    func carregarFavoritos(usuario: Usuario, contexto: ModelContext) {        let descriptor = FetchDescriptor<Favorito>(predicate: #Predicate { $0.usuarioEmail == usuario.email })        do {            favoritos = try contexto.fetch(descriptor)        } catch {            print("Erro ao buscar favoritos: \(error)")            favoritos = []        }    }    func remover(favorito: Favorito, contexto: ModelContext) {        contexto.delete(favorito)        try? contexto.save()        if let index = favoritos.firstIndex(where: { $0.id == favorito.id }) {            favoritos.remove(at: index)        }    }}