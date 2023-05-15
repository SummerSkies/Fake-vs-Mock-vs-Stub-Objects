//
//  Game.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

protocol Game {
    func search(outcomes: [String])
}

class FakeGame: Game {
    var gameOutcome: String? = nil
    
    func search(outcomes: [String]) {
        gameOutcome = outcomes.randomElement()
    }
}

class MockGame: Game {
    var gameStarted = false

    func search(outcomes: [String]) {
        gameStarted = true
    }
}

class StubGame: Game {
    var gameResult: String? = nil
    var gameResultIndex: Int
    
    init(gameResultIndex: Int) {
        self.gameResultIndex = gameResultIndex
    }

    func search(outcomes: [String]) {
        gameResult = outcomes[gameResultIndex]
    }
}
