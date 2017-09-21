//
//  Collection.swift
//  Immutable
//
//  Created by Suyeol Jeon on 12/04/2017.
//
//

extension RangeReplaceableCollection {
  /// Returns a new collection by appending a new element.
  public func appending(_ newElement: Self.Iterator.Element) -> Self {
    var copy = self
    copy.append(newElement)
    return copy
  }

  /// Returns a new collection by appending new elements.
  public func appending<S>(contentsOf newElements: S) -> Self where S: Sequence, S.Iterator.Element == Self.Iterator.Element {
    var copy = self
    copy.append(contentsOf: newElements)
    return copy
  }

  /// Returns a new collection by inserting a new element.
  public func inserting(_ newElement: Self.Iterator.Element, at i: Self.Index) -> Self {
    var copy = self
    copy.insert(newElement, at: i)
    return copy
  }

  /// Returns a new collection by inserting new elements.
  public func inserting<C>(contentsOf newElements: C, at i: Self.Index) -> Self where C: Collection, C.Iterator.Element == Self.Iterator.Element {
    var copy = self
    copy.insert(contentsOf: newElements, at: i)
    return copy
  }

  /// Returns a new collection by removing an element at specified index.
  public func removing(at i: Self.Index) -> Self {
    var copy = self
    copy.remove(at: i)
    return copy
  }

  /// Returns a new collection by removing all elements.
  public func removingAll(keepingCapacity: Bool = false) -> Self {
    var copy = self
    copy.removeAll(keepingCapacity: keepingCapacity)
    return copy
  }

  /// Returns a new collection by removing first element.
  public func removingFirst(_ n: Int = 1) -> Self {
    var copy = self
    copy.removeFirst(n)
    return copy
  }

  /// Returns a new collection by replacing given subrange with new elements.
  public func replacingSubrange<C>(_ subrange: Range<Self.Index>, with newElements: C) -> Self where C : Collection, C.Iterator.Element == Self.Iterator.Element {
    var copy = self
    copy.replaceSubrange(subrange, with: newElements)
    return copy
  }
}
