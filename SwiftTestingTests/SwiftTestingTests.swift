//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Vedat Dokuzkardeş on 12.12.2023.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {


    let math = MathFunc()
    
    func testSumFunc(){
        let result = math.Sum(x: 2, y: 2)
        
        XCTAssertEqual(result, 4)
        
    }
    
    func testMultiplyFunc(){
        let result = math.multiply(x: 3, y: 2)
        
        XCTAssertEqual(result, 6)
    }
    
    func testDivideFunc(){
        let result = math.divide(x: 6, y: 2)
        
        XCTAssertEqual(result, 3)
    }

}
