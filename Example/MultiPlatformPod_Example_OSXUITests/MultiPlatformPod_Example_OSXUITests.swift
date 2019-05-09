//
//  MultiPlatformPod_Example_OSXUITests.swift
//  MultiPlatformPod_Example_OSXUITests
//
//  Created by Michael Klybor on 5/9/19.
//
//  Simple example of OSX UI testing
//

import XCTest

class MultiPlatformPod_Example_OSXUITests: XCTestCase {
var app: XCUIApplication!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
       // XCUIApplication().launch()
        app = XCUIApplication()
        app.launch()


        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        
        let window = XCUIApplication().windows["Window"]

        window/*@START_MENU_TOKEN@*/.buttons["dateButton"]/*[[".buttons[\"May 10, 2019 at 9:11:47 PM\"]",".buttons[\"dateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.click()
        sleep(2)
        window/*@START_MENU_TOKEN@*/.buttons["dateButton"]/*[[".buttons[\"May 10, 2019 at 9:11:49 PM\"]",".buttons[\"dateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.click()
        sleep(2)
        window/*@START_MENU_TOKEN@*/.buttons["dateButton"]/*[[".buttons[\"May 10, 2019 at 9:11:49 PM\"]",".buttons[\"dateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.click()

        window.buttons[XCUIIdentifierCloseWindow].click()
      
   
    }

}
