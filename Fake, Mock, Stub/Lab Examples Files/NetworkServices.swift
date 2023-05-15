//
//  NetworkService.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

// 1: First, we'll define a protocol for the network service that our class will use
protocol NetworkService {
    func fetchData(completion: (Data?) -> Void)
}

class FakeNetworkService: NetworkService {
    func fetchData(completion: (Data?) -> Void) {
        completion(nil)
    }
}

class MockNetworkService: NetworkService {
    var fetchDataCalled = false

    func fetchData(completion: (Data?) -> Void) {
        fetchDataCalled = true
    }
}

class StubNetworkService: NetworkService {
    let data: Data
    
    init(data: Data) {
        self.data = data
    }
    
    func fetchData(completion: (Data?) -> Void) {
        completion(data)
    }
}
