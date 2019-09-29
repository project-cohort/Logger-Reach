// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Logger-Reach",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Logger-Reach",
            targets: ["Logger-Reach"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grangej/Logger.git", from: "5.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Logger-Reach",
            dependencies: ["Logger"]),
        .testTarget(
            name: "Logger-ReachTests",
            dependencies: ["Logger-Reach"]),
    ]
)
