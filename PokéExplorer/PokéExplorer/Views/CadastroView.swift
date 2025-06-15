//
//  CadastroView.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//


import SwiftUIimport SwiftDatastruct CadastroView: View {    @Environment(\.modelContext) var context    @State private var nome = ""    @State private var email = ""    @State private var senha = ""    @Environment(\.dismiss) var dismiss    var body: some View {        VStack(spacing: 20) {            Text("Criar Conta")                .font(.title)                .fontWeight(.bold)            TextField("Nome de usuário", text: $nome)                .textFieldStyle(RoundedBorderTextFieldStyle())            TextField("Email", text: $email)                .textFieldStyle(RoundedBorderTextFieldStyle())            SecureField("Senha", text: $senha)                .textFieldStyle(RoundedBorderTextFieldStyle())            Button("Cadastrar") {                let usuario = Usuario(nomeDeUsuario: nome, email: email, senha: senha)                context.insert(usuario)                try? context.save()                dismiss()            }            .buttonStyle(.borderedProminent)        }        .padding()    }}