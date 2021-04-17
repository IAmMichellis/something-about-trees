//
//  BranchesTests.swift
//  BranchesTests
//
//  Created by Michelle Ellis on 2021-03-28.
//

import XCTest
@testable import Branches

class BranchesTests: XCTestCase {

    //MARK: Tree Class Tests
    func testTreeInitializationSucceeds() {
        // Zero rating
        let zeroRatingTree = Tree.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingTree)
         
        // Highest positive rating
        let positiveRatingTree = Tree.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingTree)
    }

    func testMealInitializationFails() {
        let negativeRatingTree = Tree.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingTree)
        
        let largeRatingTest = Tree.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingTest)
         
        let emptyStringTree = Tree.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringTree)
        
    }

}
