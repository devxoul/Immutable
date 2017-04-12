//
//  Dictionary.swift
//  Immutable
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

extension Dictionary {

  /// Initialize dictionary with a collection of key-value tuples.
  public init<C>(elements: C) where C: Collection, C.Iterator.Element == (Key, Value) {
    self.init()
    for (key, value) in elements {
      self[key] = value
    }
  }

  /// `map()` that returns `Dictionary`.
  public func map<T, U>(_ transform: (Key, Value) throws -> (T, U)) rethrows -> [T: U] where T: Hashable {
    return Dictionary<T, U>(elements: try self.map(transform))
  }

  /// `flatMap()` that returns `Dictionary`.
  public func flatMap<T, U>(_ transform: (Key, Value) throws -> (T, U)?) rethrows -> [T: U] where T: Hashable {
    return Dictionary<T, U>(elements: try self.flatMap(transform))
  }

}
