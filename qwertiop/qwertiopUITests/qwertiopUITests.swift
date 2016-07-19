//
//  qwertiopUITests.swift
//  qwertiopUITests
//
//  Created by Veronika Stoilova on 7/19/16.
//  Copyright © 2016 Veronika Stoilova. All rights reserved.
//

import XCTest

class qwertiopUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        sleep(1)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSum() {
        
        let app = XCUIApplication()
        let elementsQuery = app.otherElements.containingType(.TextField, identifier:"0")
        
        
        let field1 = elementsQuery.childrenMatchingType(.TextField).matchingIdentifier("0").elementBoundByIndex(0)
        field1.tap()
        field1.typeText("9")
        
        let field2 = elementsQuery.childrenMatchingType(.TextField).matchingIdentifier("0").elementBoundByIndex(1)
        field2.tap()
        field2.typeText("5")
        
        app.buttons["SUM"].tap()
        let expectedResult = 14
    
        let resultLabel = XCUIApplication().otherElements.containingType(.TextField, identifier:"0").childrenMatchingType(.TextField).elementBoundByIndex(2)

        let realResult = Int(resultLabel.value as! String)
       
        XCTAssert(expectedResult == realResult)
    }
    
}
