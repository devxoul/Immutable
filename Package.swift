// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Immutable",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(name: "Immutable", targets: ["Immutable"]),
  ],
  targets: [
    .target(name: "Immutable"),
    .testTarget(name: "ImmutableTests", dependencies: ["Immutable"]),
  ],
  swiftLanguageVersions: [.v5]
)
