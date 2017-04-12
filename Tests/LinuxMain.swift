import XCTest
@testable import ImmutableTests

XCTMain([
  testCase(CollectionTests.allTests),
  testCase(DictionaryTests.allTests),
  testCase(FilterNilTests.allTests),
])
