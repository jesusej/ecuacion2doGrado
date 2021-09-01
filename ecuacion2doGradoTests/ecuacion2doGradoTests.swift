//
//  ecuacion2doGradoTests.swift
//  ecuacion2doGradoTests
//
//  Created by user194082 on 8/26/21.
//

import XCTest
@testable import ecuacion2doGrado

class ecuacion2doGradoTests: XCTestCase {

    let ecuationsolver = EcuationSolver();
    
    func testSolverWithoutDisc() throws {
        // Given
        let input = Ecuation(a: 2, b: 4, c: 2, r1: "", r2: "")
        
        // When
        let result = ecuationsolver.convert(ecuation: input)
        
        // Then
        let expectedRoot1: String = "-1.00"
        let expectedRoot2: String = "-1.00"
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }

    func testSolverWithPositiveDisc() throws {
        // Given
        let input = Ecuation(a: 1, b: 5, c: 6, r1: "", r2: "")
        
        // When
        let result = ecuationsolver.convert(ecuation: input)
        
        // Then
        let expectedRoot1: String = "-2.00"
        let expectedRoot2: String = "-3.00"
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }
    
    func testSolverWithNegativeDisc() throws {
        // Given
        let input = Ecuation(a: 1, b: 1, c: 1, r1: "", r2: "")
        
        // When
        let result = ecuationsolver.convert(ecuation: input)
        
        // Then
        let expectedRoot1: String = "-0.50 + 0.87i"
        let expectedRoot2: String = "-0.50 - 0.87i"
        XCTAssertEqual(result.r1, expectedRoot1)
        XCTAssertEqual(result.r2, expectedRoot2)
    }
}
