//
//  SeekerTests.swift
//  Fake, Mock, Stub Tests
//
//  Created by Juliana Nielson on 5/15/23.
//

import XCTest
@testable import Fake__Mock__Stub

final class SeekerTests: XCTestCase {

    func testSearch_GameCompelted() {
        
        let fakeGame = FakeGame()
        let search = Seeker(game: fakeGame)
        
        search.search()
        var gameOutcome = fakeGame.gameOutcome

        XCTAssertNotNil(gameOutcome)
    }

    func testSearch_GameStarted() {
        
        let mockGame = MockGame()
        let search = Seeker(game: mockGame)

        search.search()

        XCTAssertTrue(mockGame.gameStarted)
    }
    
    func testSearch_StrayFound() {

        let stubGame = StubGame(gameResultIndex: 0)
        let search = Seeker(game: stubGame)

        search.search()
        var gameResult = stubGame.gameResult
        
        XCTAssertEqual(gameResult, "Found you!")
    }
}
