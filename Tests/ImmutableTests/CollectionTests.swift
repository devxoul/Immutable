//
//  CollectionTests.swift
//  Immutable
//
//  Created by Suyeol Jeon on 13/04/2017.
//
//

import XCTest
import Immutable

final class CollectionTests: XCTestCase {

  func testAppending() {
    XCTAssertEqual([1, 2, 3].appending(4), [1, 2, 3, 4])
    XCTAssertEqual([1, 2, 3].appending(contentsOf: [4, 5]), [1, 2, 3, 4, 5])
  }

  func testInserting() {
    XCTAssertEqual([1, 2, 3].inserting(4, at: 1), [1, 4, 2, 3])
    XCTAssertEqual([1, 2, 3].inserting(contentsOf: [4, 5], at: 1), [1, 4, 5, 2, 3])
  }

  func testRemoving() {
    XCTAssertEqual([1, 2, 3].removing(at: 0), [2, 3])
    XCTAssertEqual([1, 2, 3].removingAll(), [])
    XCTAssertEqual([1, 2, 3].removingFirst(), [2, 3])
    XCTAssertEqual([1, 2, 3].removingFirst(2), [3])
    XCTAssertEqual([1, 2, 3].removingAll(where: { $0 < 3 }), [3])
    XCTAssertEqual([1, 2, 3].removingFirst(where: { $0 < 3 }), [2, 3])
  }

  func testReplacing() {
    XCTAssertEqual([1, 2, 3].replacingSubrange(0..<2, with: []), [3])
    XCTAssertEqual([1, 2, 3].replacingSubrange(0..<2, with: [0, 1]), [0, 1, 3])
    XCTAssertEqual([1, 2, 3].replacingSubrange(0..<2, with: [0, 1, 2]), [0, 1, 2, 3])
  }

  static var allTests : [(String, (CollectionTests) -> () throws -> Void)] {
    return [
      ("testAppending", testAppending),
      ("testInserting", testInserting),
      ("testRemoving", testRemoving),
      ("testReplacing", testReplacing),
    ]
  }

}
