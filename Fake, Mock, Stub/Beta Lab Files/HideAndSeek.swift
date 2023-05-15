//
//  Search.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import Foundation

protocol HideAndSeek {
    func search(outcome: (String?) -> Void)
}

class FakeHideAndSeek: HideAndSeek {
    func search(outcome: (String?) -> Void) {
        outcome(nil)
    }
}

class MockHideAndSeek: HideAndSeek {
    var searchCalled = false

    func search(outcome: (String?) -> Void) {
        searchCalled = true
    }
}

class StubHideAndSeek: HideAndSeek {
    let result: String?
    
    init(result: String?) {
        self.result = result
    }

    func search(outcome: (String?) -> Void) {
        outcome(result)
    }
}
