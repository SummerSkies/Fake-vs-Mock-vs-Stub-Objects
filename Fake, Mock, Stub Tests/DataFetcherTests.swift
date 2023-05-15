//
//  DataFetcherTests.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import XCTest
@testable import Fake__Mock__Stub

// 3: Now we can write tests for our `DataFetcher` class
class DataFetcherTests: XCTestCase {
    func testFetchData_WithSuccessfulNetworkCall_CallsCompletionWithData() {
        // Arrange
        let data = Data()
        let stubNetworkService = StubNetworkService(data: data)
        let dataFetcher = DataFetcher(networkService: stubNetworkService)
        var completionData: Data?
        
        // Act
        dataFetcher.fetchData { data in
            completionData = data
        }
        
        // Assert
        XCTAssertEqual(completionData, data)
    }
    
    func testFetchData_WithFailedNetworkCall_CallsCompletionWithNil() {
        // Arrange
        let fakeNetworkService = FakeNetworkService()
        let dataFetcher = DataFetcher(networkService: fakeNetworkService)
        var completionData: Data?

        // Act
        dataFetcher.fetchData { data in
            completionData = data
        }

        // Assert
        XCTAssertNil(completionData)
    }

    func testFetchData_CallsNetworkServiceFetchData() {
        // Arrange
        let mockNetworkService = MockNetworkService()
        let dataFetcher = DataFetcher(networkService: mockNetworkService)

        // Act
        dataFetcher.fetchData { _ in }

        // Assert
        XCTAssertTrue(mockNetworkService.fetchDataCalled)
    }
}
