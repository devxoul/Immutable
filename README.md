# Immutable

![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)
[![Build Status](https://travis-ci.org/devxoul/Immutable.svg?branch=master)](https://travis-ci.org/devxoul/Immutable)
[![CocoaPods](http://img.shields.io/cocoapods/v/Immutable.svg)](https://cocoapods.org/pods/Immutable)

Not yet implemented functions in Swift. This library is tiny but you must be looking for somebody to make this open sourced library 😛

## Features

* `Dictionary.map()` and `Dictionary.flatMap()` which returns `Dictionary`.

    ```swift
    let dict: [String: Int] = ["a": 1, "b": 2, "c": 3]
    let result = dict.map { key, value in
      return (key, value * 2)
    }
    print(result) // ["a": 2, "b": 4, "c": 6]
    ```

* `filterNil()` on `Collection` and `Dictionary`.

    ```swift
    let dict: [String: Any?] = [
      "some": 123,
      "none": nil,
    ]
    let result = dict.filterNil()
    print(result) // ["some": 123]
    ```

## Installation

* **Using CocoaPods**:

    ```ruby
    pod 'Immutable'
    ```

* **Using Carthage**:

    ```
    github "devxoul/Immutable" ~> 0.2
    ```

* **Using Swift Package Manager**:

    ```swift
    let package = Package(
      name: "MyAwesomeProject",
      targets: [],
      dependencies: [
        .Package(url: "https://github.com/devxoul/Immutable.git", majorVersion: 0)
      ]
    )
    ```

## Requirements

* Swift 3

## Contribution

Any discussions and pull requests are welcomed 💖

Use `$ swift generate-xcodeproj` to generate Xcode project for development.

## License

Immutable is under MIT license. See the [LICENSE](LICENSE) for more info.
