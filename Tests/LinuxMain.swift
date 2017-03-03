import XCTest
@testable import YetTests

XCTMain([
     testCase(DictionaryTests.allTests),
     testCase(FilterNilTests.allTests),
])
