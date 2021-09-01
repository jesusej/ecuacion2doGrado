//
//  ecuacion2doGradoUITests.swift
//  ecuacion2doGradoUITests
//
//  Created by user194082 on 8/26/21.
//

import XCTest

class ecuacion2doGradoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSolverWithDiscUI() throws {
            // UI tests must launch the application that they test.
            let app = XCUIApplication()
            app.launch()
            
        
            let inputEcuationA = app.textFields["InputA"]
            let inputEcuationB = app.textFields["InputB"]
            let inputEcuationC = app.textFields["InputC"]
            let inputRoot1 = app.textFields["InputR1"]
            let inputRoot2 = app.textFields["InputR2"]
            
            inputEcuationA.tap()
            inputEcuationA.typeText("1")
            inputEcuationB.tap()
            inputEcuationB.typeText("5")
            inputEcuationC.tap()
            inputEcuationC.typeText("6")
            app.staticTexts["Resolver"].tap()
            
            print("Input Root 1: " + (inputRoot1.value as! String))
            print("Input Root 2: " + (inputRoot2.value as! String))
            
            XCTAssertEqual(inputRoot1.value as! String, "-2.00")
            XCTAssertEqual(inputRoot2.value as! String, "-3.00")
        }
    
    func testSolverWithAEqual0() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
    
        let inputEcuationA = app.textFields["InputA"]
        let inputEcuationB = app.textFields["InputB"]
        let inputEcuationC = app.textFields["InputC"]
        
        inputEcuationA.tap()
        inputEcuationA.typeText("0")
        inputEcuationB.tap()
        inputEcuationB.typeText("5")
        inputEcuationC.tap()
        inputEcuationC.typeText("6")
        app.staticTexts["Resolver"].tap()
        
        XCTAssert(app.alerts.element.staticTexts["No es una ecuacion de segundo grado"].exists)
    }
}
