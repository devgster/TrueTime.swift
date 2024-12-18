// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrueTime",
    platforms: [
        .iOS(.v10),  // iOS 10.0 이상 지원
        .macOS(.v10_15),  // macOS 10.15 이상 지원
        .tvOS(.v10)  // tvOS 10.0 이상 지원
    ],
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]
        )
    ],
    dependencies: [],
    targets: [
        // Objective-C 모듈 타겟
        .target(
            name: "CTrueTime",
            path: "Sources/CTrueTime",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("USE_OBJC_CODE") // 필요한 경우 정의 플래그 추가
            ]
        ),
        // Swift 모듈 타겟
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"],
            path: "Sources/Swift"
        )
    ]
)
