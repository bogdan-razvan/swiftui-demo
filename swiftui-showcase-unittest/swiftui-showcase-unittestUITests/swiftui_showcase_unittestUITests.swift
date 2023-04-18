//
//  swiftui_showcase_unittestUITests.swift
//  swiftui-showcase-unittestUITests
//
//  Created by bogdan razvan on 18.04.2023.
//

import XCTest

final class swiftui_showcase_unittestUITests: XCTestCase {

    func testButtonIsEnabled() throws {
        let app = XCUIApplication()
        app.launch()

        let submitButton = app.buttons["submitButton"]

        let usernameTextField = app.textFields["usernameTextField"]
        usernameTextField.tap()
        usernameTextField.typeText("test")

        // expect the button to be disabled
        XCTAssertFalse(submitButton.isEnabled)

        let passwordTextField = app.textFields["passwordTextField"]
        passwordTextField.tap()
        passwordTextField.typeText("test")

        // expect the button to be enabled
        XCTAssertTrue(submitButton.isEnabled)

    }

}
