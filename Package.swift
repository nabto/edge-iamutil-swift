// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NabtoEdgeIamUtil",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NabtoEdgeIamUtil",
            targets: ["NabtoEdgeIamUtil"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nabto/edge-client-swift.git", from: "3.2.1"),
        .package(url: "https://github.com/SomeRandomiOSDev/CBORCoding.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NabtoEdgeIamUtil",
            dependencies: [.product(name: "NabtoEdgeClient", package: "edge-client-swift"), "CBORCoding"],
            path: ".",
            exclude: ["NabtoEdgeIamUtilTests", "HostForTests"]
            ),
    ]
)
