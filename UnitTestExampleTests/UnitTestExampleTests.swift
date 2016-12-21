//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by cagatay emekci on 21/12/2016.
//  Copyright © 2016 cagatay emekci. All rights reserved.
//

import XCTest
@testable import UnitTestExample

class UnitTestExampleTests: XCTestCase {
    var firstUser: User!
    var seconduser : User!
    
    override func setUp() {
        super.setUp()
        firstUser = User(name: "Çağatay", age: 25)
        seconduser = User(name: "Ali", age: 29)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testCompareUserAge() {
        let viewCont : ViewController! = ViewController()
        let resultString = viewCont.compareUserAge(firstUser: firstUser, secondUser: seconduser)
        XCTAssertEqual(resultString, "Çağatay")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
