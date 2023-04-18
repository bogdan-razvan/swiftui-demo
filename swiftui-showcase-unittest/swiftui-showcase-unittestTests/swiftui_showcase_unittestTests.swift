//
//  swiftui_showcase_unittestTests.swift
//  swiftui-showcase-unittestTests
//
//  Created by bogdan razvan on 18.04.2023.
//

import XCTest
@testable import swiftui_showcase_unittest

final class swiftui_showcase_unittestTests: XCTestCase {

    private var subject: ViewModel!

    @MainActor override func setUp() {
        super.setUp()
        subject = ViewModel()
    }

    override func tearDown() {
        subject = nil
        super.tearDown()
    }

    func testButtonIsEnabled() throws {
        subject.username = "test"
        subject.password = "test"
        print("username: \(subject.username)")
        print("password: \(subject.password)")
        XCTAssertFalse(subject.isButtonDisabled)
    }

    func testButtonIsDisabled_emptyUsername() throws {
        subject.username = ""
        subject.password = "test"
        XCTAssertTrue(subject.isButtonDisabled)
    }

    func testButtonIsDisabled_emptyPassword() throws {
        subject.username = "test"
        subject.password = ""
        XCTAssertTrue(subject.isButtonDisabled)
    }

}
