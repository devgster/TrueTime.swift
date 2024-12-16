// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrueTime",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TrueTime",
            path: "Sources",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
