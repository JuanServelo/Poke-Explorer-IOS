//
//  ContentView.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @EnvironmentObject var authManager: AuthenticationManager

    var body: some View {
        if authManager.isAuthenticated, let user = authManager.authenticatedUser {
            MainTabView(usuario: user)
        } else {
            LoginView()
        }
    }
}
