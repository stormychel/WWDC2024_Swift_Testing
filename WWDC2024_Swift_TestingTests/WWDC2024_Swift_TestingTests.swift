//
//  WWDC2024_Swift_TestingTests.swift
//  WWDC2024_Swift_TestingTests
//
//  Created by Michel Storms on 18/06/2024.
//

import Testing

struct WWDC2024_Swift_TestingTests {

    @Test func testExample() async throws {
        print("testExample()")
        
        let expected: Int = 36
        let number: Int = 3
        let multiplier: Int = 12
        
        #expect(number * multiplier == expected)
    }

}
