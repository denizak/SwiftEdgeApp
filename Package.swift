// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftEdgeApp",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Compute", from: "2.14.0")
    ],
    targets: [
        .executableTarget(
            name: "SwiftEdgeApp",
            dependencies: ["Compute"]
        ),
    ]
)
