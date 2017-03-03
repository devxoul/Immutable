//
//  FilterNilTests.swift
//  Yet
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

import XCTest
import Yet

class FilterNilTests: XCTestCase {

  func testFilterNil_array() {
    let array: [Int?] = [1, 2, 3, nil, 5, nil, 7]
    let result = array.filterNil()
    XCTAssertEqual(result, [1, 2, 3, 5, 7])
  }

  func testFilterNil_dictionary() {
    let dict: [String: Int?] = [
      "a": 1,
      "b": nil,
      "c": 3,
      "d": 4,
      "e": nil,
    ]
    let result = dict.filterNil()
    XCTAssertEqual(result, [
      "a": 1,
      "c": 3,
      "d": 4,
    ])
  }


  static var allTests : [(String, (FilterNilTests) -> () throws -> Void)] {
    return [
      ("testFilterNil_array", testFilterNil_array),
      ("testFilterNil_dictionary", testFilterNil_dictionary),
    ]
  }
}
