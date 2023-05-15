//
//  Seeker.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

class Seeker {
    private let game: Game
    
    init(game: Game) {
        self.game = game
    }
    
    func search() {
        let outcomes = ["Found you!", "Still searching..."]
        game.search(outcomes: outcomes)
    }
}
