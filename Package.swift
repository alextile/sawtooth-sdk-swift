// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "sawtooth-sdk-swift",
    platforms: [
        .iOS(.v11),
        .watchOS(.v5)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "sawtooth-sdk-swift",
            targets: ["sawtooth-sdk-swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Boilertalk/secp256k1.swift.git", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "sawtooth-sdk-swift",
            dependencies: [],
            path: "SawtoothSigning"
        ),
    ]
)