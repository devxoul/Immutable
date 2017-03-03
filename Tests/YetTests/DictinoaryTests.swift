//
//  DictionaryTests.swift
//  Yet
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

import XCTest
import Yet

class DictionaryTests: XCTestCase {

  func testMap() {
    let dict: [String: Int] = [
      "a": 1,
      "b": 2,
      "c": 3,
    ]
    let result = dict.map { key, value in
      return (key.uppercased(), "\(value * 2)")
    }
    XCTAssertEqual(result.count, 3)
    XCTAssertEqual(result["A"], "2")
    XCTAssertEqual(result["B"], "4")
    XCTAssertEqual(result["C"], "6")
  }

  func testFlatMap() {
    let dict: [String: Int] = [
      "a": 1,
      "b": 2,
      "c": 3,
    ]
    let result = dict.flatMap { key, value -> (String, String)? in
      if value % 2 == 0 {
        return nil
      } else {
        return (key.uppercased(), "\(value * 2)")
      }
    }
    XCTAssertEqual(result.count, 2)
    XCTAssertEqual(result["A"], "2")
    XCTAssertNil(result["B"])
    XCTAssertEqual(result["C"], "6")
  }


  static var allTests : [(String, (DictionaryTests) -> () throws -> Void)] {
    return [
      ("testMap", testMap),
      ("testFlatMap", testFlatMap),
    ]
  }
}
