//
//  Search.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

// 2: Next, we'll define a class that will use the network service to fetch data
class Search {
    private let hideAndSeek: HideAndSeek
    
    init(hideAndSeek: HideAndSeek) {
        self.hideAndSeek = hideAndSeek
    }
    
    func search(outcome: @escaping (String?) -> Void) {
        hideAndSeek.search { result in
            outcome(result)
        }
    }
}
