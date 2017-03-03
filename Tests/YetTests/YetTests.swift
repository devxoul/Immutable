import XCTest
@testable import Yet

class YetTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Yet().text, "Hello, World!")
    }


    static var allTests : [(String, (YetTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
