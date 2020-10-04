// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtendedImageViewWithNuke",
    platforms:[.iOS(.v11)],
    products: [
        .library(
            name: "ExtendedImageViewWithNuke", targets: ["ExtendedImageViewWithNuke"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Nuke.git", from: "9.1.2")
    ],
    targets: [
        .target(
            name: "ExtendedImageViewWithNuke",
            dependencies: [
                .product(name: "Nuke", package: "Nuke")
            ]),
        .testTarget(
            name: "ExtendedImageViewWithNukeTests",
            dependencies: ["ExtendedImageViewWithNuke"]),
    ]
)
