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
            targets: ["TrueTime"]),
        .library(
            name: "CTrueTime",
            targets: ["CTrueTime"])
        
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "8.0.1")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/typelift/SwiftCheck.git", .upToNextMajor(from: "0.12.0")),
    ],
    
    targets: [
        // Objective-C 모듈 타겟
        .target(
            name: "CTrueTime",
            path: "Sources/CTrueTime",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
            ]
        ),
        // Swift 모듈 타겟
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"]),
        .systemLibrary(name: "CTrueTime")
        
    ]
)
