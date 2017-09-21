// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "Immutable",
  products: [
    .library(name: "Immutable", targets: ["Immutable"]),
  ],
  targets: [
    .target(name: "Immutable"),
    .testTarget(name: "ImmutableTests", dependencies: ["Immutable"]),
  ]
)
