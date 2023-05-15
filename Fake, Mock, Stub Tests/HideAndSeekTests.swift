//
//  HideAndSeekTest.swift
//  Fake, Mock, Stub Tests
//
//  Created by Juliana Nielson on 5/15/23.
//

import XCTest
@testable import Fake__Mock__Stub

class HideAndSeekTests: XCTestCase {

    func testSearch_StrayNotFound() {
        // Arrange
        let fakeHideAndSeek = FakeHideAndSeek()
        let search = Search(hideAndSeek: fakeHideAndSeek)
        var completionOutcome: String?

        // Act
        search.search { outcome in
            completionOutcome = outcome
        }

        // Assert
        XCTAssertNil(completionOutcome)
    }

    func testSearch_SearchHappens() {
        // Arrange
        let mockHideAndSeek = MockHideAndSeek()
        let search = Search(hideAndSeek: mockHideAndSeek)

        // Act
        search.search { _ in }

        // Assert
        XCTAssertTrue(mockHideAndSeek.searchCalled)
    }
    
    func testSearch_StrayFound() {
        // Arrange
        let result = String()
        let stubHideAndSeek = StubHideAndSeek(result: result)
        let search = Search(hideAndSeek: stubHideAndSeek)
        var completionResult: String?
        
        // Act
        search.search { outcome in
            completionResult = outcome
        }
        
        // Assert
        XCTAssertEqual(completionResult, result)
    }
}
