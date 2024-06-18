//
//  WWDC2024_Swift_TestingTests.swift
//  WWDC2024_Swift_TestingTests
//
//  Created by Michel Storms on 18/06/2024.
//

import Testing

struct WWDC2024_Swift_TestingTests {

    @Test("testExpect") func testExpect() async throws {
        print("testExpect()")
        
        let expected: Int = 36
        let number: Int = 3
        let multiplier: Int = 12
        
        #expect(number * multiplier == expected)
    }

    @Test("testRequire") func testRequire() async throws {
        print("testRequire()")
  
//        let expectedOptionals: [Int?] = [] // Expectation failed: (expectedOptionals → []).first → nil → nil
        let expectedOptionals: [Int?] = [36, nil, 4] // Passes test
        
        let expected = try #require(expectedOptionals.first)
        
        let number: Int = 3
        let multiplier: Int = 12
        
        #expect(number * multiplier == expected)
    }
}
