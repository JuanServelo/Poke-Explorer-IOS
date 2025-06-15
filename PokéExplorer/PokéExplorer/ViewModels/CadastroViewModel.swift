//
//  CadastroViewModel.swift
//  PokéExplorer
//
//  Created by user276508 on 15/06/25.
//


import Foundationimport SwiftData@MainActorclass CadastroViewModel: ObservableObject {    @Published var nome: String = ""    @Published var email: String = ""    @Published var senha: String = ""    @Published var confirmarSenha: String = ""    @Published var mensagemErro: String? = nil    @Published var cadastroConcluido = false    func cadastrar(usuarios: [Usuario], context: ModelContext) {        guard !nome.isEmpty, !email.isEmpty, !senha.isEmpty else {            mensagemErro = "Todos os campos são obrigatórios."            return        }        guard senha == confirmarSenha else {            mensagemErro = "As senhas não coincidem."            return        }        guard Validador.emailValido(email) else {            mensagemErro = "Email inválido."            return        }        guard Validador.senhaForte(senha) else {            mensagemErro = "A senha deve ter ao menos 6 caracteres, uma letra maiúscula e um número."            return        }        if usuarios.contains(where: { $0.email == email }) {            mensagemErro = "Já existe um usuário com este e-mail."            return        }        let novoUsuario = Usuario(nomeDeUsuario: nome, email: email, senha: senha)        context.insert(novoUsuario)        do {            try context.save()            mensagemErro = nil            cadastroConcluido = true        } catch {            mensagemErro = "Erro ao salvar usuário."        }    }}