//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by amrpc on 11/12/19.
//  Copyright © 2019 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes
class MinutesTests: XCTestCase {
    var EntryUnderTest: Entry!
    override func setUp() {
    EntryUnderTest = Entry("Title", "Content")
    }

    override func tearDown() {
     EntryUnderTest = nil
    }
    func testSerlization () {
        
        let serlization = FileEntryStore.serialize( EntryUnderTest)
        let entry = FileEntryStore.deserialize(serlization!)
        
        XCTAssertEqual(entry?.title, "Title")
        XCTAssertEqual(entry?.content, "Content")
    }
    
    

}
