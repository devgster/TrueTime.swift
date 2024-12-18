// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TrueTime",
    platforms: [
        .iOS(.v15),  // iOS 10.0 이상 지원
    ],
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]),
        .library(
            name: "CTrueTime",
            targets: ["CTrueTime"]
        )
        
    ],
    dependencies: [],
    
    targets: [
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"],
            path: "Sources/Swift"
        ),
        .systemLibrary(
            name: "CTrueTime",
            path: "Sources/CTrueTime"
        )
    ]
)
