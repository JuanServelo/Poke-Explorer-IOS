//
//  Poke_ExplorerApp.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
//

import SwiftUI
import SwiftData

@main
struct Poke_ExplorerApp: App {
    @StateObject private var authManager = AuthenticationManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
        .modelContainer(for: [Usuario.self, Favorito.self])
    }
}
