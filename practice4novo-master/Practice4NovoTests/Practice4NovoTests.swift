//
//  Practice4NovoTests.swift
//  Practice4NovoTests
//
//  Created by Juan Manuel Moreno on 6/12/19.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import XCTest

class Practice4NovoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testReturnOne() {
        let base = 1
        XCTAssertTrue(base == 1)
    }
}
