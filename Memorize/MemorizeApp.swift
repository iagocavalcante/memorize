//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Idopter Labs on 07/05/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
