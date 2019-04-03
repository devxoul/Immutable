# Immutable

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![Build Status](https://travis-ci.org/devxoul/Immutable.svg?branch=master)](https://travis-ci.org/devxoul/Immutable)
[![CocoaPods](http://img.shields.io/cocoapods/v/Immutable.svg)](https://cocoapods.org/pods/Immutable)

Missing immutable functions in Swift. You must be looking for somebody to make this library 😛

## Features

* Non-mutating `appending()`, `inserting()`, `removing()` functions in `Collection`
* `map()` and `flatMap()` for `Dictionary`
* `filterNil()` for `Collection` and `Dictionary`

## Installation

* **Using CocoaPods**:

    ```ruby
    pod 'Immutable'
    ```

* **Using Carthage**:

    ```
    github "devxoul/Immutable"
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
