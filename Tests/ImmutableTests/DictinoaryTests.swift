//
//  DictionaryTests.swift
//  Immutable
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

import XCTest
import Immutable

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

  func testUpdatingValue() {
    XCTAssertEqual(["a": 10].updatingValue(20, forKey: "b"), ["a": 10, "b": 20])
    XCTAssertEqual(["a": 10].updatingValue(20, forKey: "a"), ["a": 20])
  }

  func testRemovingValue() {
    XCTAssertEqual(["a": 10].removingValue(forKey: "a"), [:])
  }

  func testMergingValues() {
    XCTAssertEqual(["a": 10, "b": 20].merging(["b": 30, "c": 40]),
                   ["a": 10, "b": 30, "c": 40])
  }


  static var allTests : [(String, (DictionaryTests) -> () throws -> Void)] {
    return [
      ("testMap", testMap),
      ("testFlatMap", testFlatMap),
    ]
  }
}
