import XCTest
@testable import ImmutableTests

XCTMain([
     testCase(DictionaryTests.allTests),
     testCase(FilterNilTests.allTests),
])
