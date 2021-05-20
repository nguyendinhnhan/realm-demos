//
//  InventoryDemoUITests.swift
//  InventoryDemoUITests
//
//  Created by Andrew Morgan on 21/04/2021.
//

import XCTest

class InventoryDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testClickLoginButton() throws {
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
                           
        let startButton = app.buttons["Log In"]
        XCTAssertTrue(startButton.waitForExistence(timeout: 1))
        XCTAssertTrue(startButton.isEnabled)
        startButton.tap()
    }
    
    func testAddEmail() throws {
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
                           
        let emailText = app.textFields["email_input"]
        XCTAssertTrue(emailText.waitForExistence(timeout: 1))
        emailText.tap()
        emailText.typeText("testemail@realm.com")
        XCTAssertEqual(emailText.value as! String, "testemail@realm.com")
    }
}
