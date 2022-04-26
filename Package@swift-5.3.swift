// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Immutable",
  platforms: [
    .macOS(.v10_10), .iOS(.v9), .tvOS(.v9)
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
