//
//  LoginViewModel.swift
//  PokéExplorer
//
//  Created by user276508 on 15/06/25.
//


import Foundationimport SwiftDataimport SwiftUI@MainActorclass LoginViewModel: ObservableObject {    @Published var email: String = ""    @Published var senha: String = ""    @Published var erroLogin: String? = nil    @Published var usuarioLogado: Usuario? = nil    @Published var isAuthenticated: Bool = false    func autenticar(usuarios: [Usuario]) {        guard let user = usuarios.first(where: { $0.email == email && $0.senha == senha }) else {            erroLogin = "Email ou senha inválidos."            return        }        usuarioLogado = user        isAuthenticated = true        erroLogin = nil    }}