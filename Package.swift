// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "OpenCombine",
    products: [
        .library(name: "OpenCombine", targets: ["OpenCombine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/broadwaylamb/GottaGoFast.git",
                 .branch("master"))
    ],
    targets: [
        .target(name: "CNIOAtomics"),
        .target(name: "OpenCombine", dependencies: ["CNIOAtomics"]),
        .testTarget(name: "OpenCombineTests",
                    dependencies: ["OpenCombine", "GottaGoFast"])
    ]
)
