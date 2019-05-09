//
//  MultiPlatformPod_Example_IOSUITests.swift
//  MultiPlatformPod_Example_IOSUITests
//
//  Created by Michael Klybor on 5/9/19.
//

import XCTest
import MultiPlatformPod

class MultiPlatformPod_Example_IOSUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
    }

    func testExample() {
        //do some simple button-clicks to exercise the UI
        let datebuttonButton = XCUIApplication().buttons["dateButton"]
        datebuttonButton.tap()
        sleep(2)
        datebuttonButton.tap()
        sleep(2)
        datebuttonButton.tap()
        sleep(2)
        datebuttonButton.tap()
        sleep(2)

        
    }

}
