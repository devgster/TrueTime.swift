// swift-tools-version: 5.4
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
    dependencies: [
        // 의존성 추가 (필요 시 공백 제거)
    ],
    targets: [
        .target(
            name: "TrueTime",
            path: "Sources",
            publicHeadersPath: "",
            cSettings: [
                .headerSearchPath("Sources")
            ]
        ),
        .testTarget(
            name: "TrueTimeTests",
            dependencies: ["TrueTime"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
