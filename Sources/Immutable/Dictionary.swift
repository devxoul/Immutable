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
    return Dictionary<T, U>(elements: try self.compactMap(transform))
  }

  /// Returns a new dictionary by updating a value for key.
  public func updatingValue(_ value: Value, forKey key: Key) -> Dictionary {
    var copy = self
    copy.updateValue(value, forKey: key)
    return copy
  }

  /// Returns a new dictionary by removing a value for key.
  public func removingValue(forKey key: Key) -> Dictionary {
    var copy = self
    copy.removeValue(forKey: key)
    return copy
  }

  /// returns a new directory by merging all values for respective keys.
  public func merging(_ dictionary: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    var copy = self
    dictionary.forEach { copy.updateValue($1, forKey: $0) }
    return copy
  }
}
