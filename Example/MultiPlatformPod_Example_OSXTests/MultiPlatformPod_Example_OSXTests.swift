//
//  MultiPlatformPod_Example_OSXTests.swift
//  MultiPlatformPod_Example_OSXTests
//
//  Created by Michael Klybor on 5/9/19.
//
//  Example of testing of the framework on OSX
//

import XCTest
import MultiPlatformPod

@testable import MultiPlatformPod_Example_OSX

class MultiPlatformPod_Example_OSXTests: XCTestCase {

    var formatter: DateFormatter?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        formatter = DateFormatter()
        formatter?.dateStyle = .medium
        formatter?.timeStyle = .medium
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        formatter = nil
    }
    
    func testDate() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // 1. given
        
        let currentDate = Date()
        
        
        
        // 2. when
        let testingCurrentDate = CurrentDate.date()
        let dateDifference = testingCurrentDate.timeIntervalSince(currentDate)
        
        // 3. then these should be equal to within 1 second
        XCTAssertLessThan(dateDifference, 1.0, "The dates differ by more than one second")
        
    }
    
    func testDateString() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // 1. given
        
        let currentDate = Date()
        let currentDateStr = formatter?.string(from: currentDate)
        
        
        
        // 2. when
        let testingCurrentDateStr = CurrentDate.dateStr()
        
        // 3. then these should be equal since they go out to 1 second resolution
        XCTAssertEqual(testingCurrentDateStr, currentDateStr, "The date strings do not match")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
             _ = CurrentDate.date()
             _ = CurrentDate.dateStr()
            
        }
    }

}
