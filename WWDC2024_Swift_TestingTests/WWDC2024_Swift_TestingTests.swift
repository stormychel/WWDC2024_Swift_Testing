//
//  WWDC2024_Swift_TestingTests.swift
//  WWDC2024_Swift_TestingTests
//
//  Created by Michel Storms on 18/06/2024.
//

import Testing

struct WWDC2024_Swift_TestingTests {

    struct TestingTests {
        let number: Int = 3
        let multiplier: Int = 12
        
        @Test("testExpect") func testExpect() async throws {
            print("testExpect()")
            
            let expected: Int = 36
            
            #expect(number * multiplier == expected)
        }
        
        @Test("testRequire") func testRequire() async throws {
            print("testRequire()")
            
            //        let expectedOptionals: [Int?] = [] // Expectation failed: (expectedOptionals → []).first → nil → nil
            let expectedOptionals: [Int?] = [36, nil, 4] // Passes test
            
            let expected = try #require(expectedOptionals.first)
            
            #expect(number * multiplier == expected)
        }
        
        @Test(.enabled(if: 1 == 1)) func testConditions() async throws {
            print("testConditions() - 1 == 1")
        }
        
        @Test(.disabled("Disabled for testing.")) func testDisabled() async throws {
            print("testDisabled() - THIS WILL NEVER RUN :(")
        }
        
        @Test(.disabled("Due to a known crash."),
              .bug("www.apple.com", "Crashes at <symbol>.")) func testDisabledDueToCrash() async throws {
            
            print("testDisabled() - THIS WILL NEVER RUN :(")
        }
        
        @Test(.enabled(if: 1 == 1))
        @available(iOS 13.0, macOS 10.1, *)
        func testMacOnly() async throws {
            print("testMacOnly() - 1 == 1")
        }
        
        /* MARK: not sure about this one - TODO: explore Tags
        @Test(.tags(.testTag)) func testTags() async throws {
            print("testTags()")
        }
        */
        
        // TODO: explore @Suite macro
        
        /* TODO: explore arguments + parameters
        @Test (arguments: [
            "A Beach",
            "By the Lake",
            "Camping in the Woods",
        ])
        func mentionsFor_A_Beach(videoName: String) async throws {
            let videoLibrary = try await VideoLibrary()
            let video = try #require(await videoLibrary.video(named: "A Beach"))
            #expect(!video.mentionedContinents.isEmpty)
            #expect(video.mentionedContinents.count <= 3)
        }
        */
        
        
    }
}

