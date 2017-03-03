//
//  Dictionary.swift
//  Yet
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

extension Dictionary {

  /// `map()` that returns `Dictionary`.
  public func map<T, U>(_ transform: (Key, Value) throws -> (T, U)) rethrows -> [T: U] where T: Hashable {
    var dict: [T: U] = [:]
    for (key, value) in self {
      let (newKey, newValue) = try transform((key, value))
      dict[newKey] = newValue
    }
    return dict
  }

  /// `flatMap()` that returns `Dictionary`.
  public func flatMap<T, U>(_ transform: (Key, Value) throws -> (T, U)?) rethrows -> [T: U] where T: Hashable {
    var dict: [T: U] = [:]
    for (key, value) in self {
      guard let (newKey, newValue) = try transform((key, value)) else { continue }
      dict[newKey] = newValue
    }
    return dict
  }
  
}
