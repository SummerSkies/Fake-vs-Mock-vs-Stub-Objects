//
//  DataFetcher.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

// 2: Next, we'll define a class that will use the network service to fetch data
class DataFetcher {
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func fetchData(completion: @escaping (Data?) -> Void) {
        networkService.fetchData { data in
            completion(data)
        }
    }
}
