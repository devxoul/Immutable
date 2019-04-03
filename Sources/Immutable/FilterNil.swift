//
//  FilterNil.swift
//  Immutable
//
//  Created by Suyeol Jeon on 03/03/2017.
//
//

/// A protocol for making generic type constraints of Optionals.
public protocol _OptionalType {
  associatedtype _Wrapped

  func flatMap<U>(_ transform: (_Wrapped) throws -> U?) rethrows -> U?
}

extension Optional: _OptionalType {
  public typealias _Wrapped = Wrapped
}

extension Collection where Iterator.Element: _OptionalType {
  /// Returns nil-excluded array.
  public func filterNil() -> [Iterator.Element._Wrapped] {
    return self.compactMap { $0.flatMap { $0 } }
  }
}

extension Dictionary where Value: _OptionalType {
  public func filterNil() -> [Key: Value._Wrapped] {
    return self.flatMap { key, value in
      return value.flatMap { (key, $0) }
    }
  }
}

public func filterNil<T>(_ array: [T?]) -> [T] {
  return array.filterNil()
}

public func filterNil<K, V>(_ dictionary: [K: V?]) -> [K: V] {
  return dictionary.filterNil()
}
