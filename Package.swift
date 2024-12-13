// swift-tools-version: 5.0
import PackageDescription

let package = Package(
    name: "TrueTime",
    platforms: [
        .iOS(.v8),       // iOS 최소 지원 버전
        .macOS(.v10_10), // macOS 최소 지원 버전
        .tvOS(.v9)       // tvOS 최소 지원 버전
    ],
    products: [
        // 이 패키지가 생성하는 라이브러리 정의
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]
        )
    ],
    dependencies: [
        // 의존성이 있다면 여기에 추가합니다.
    ],
    targets: [
        // TrueTime 모듈 타겟 정의
        .target(
            name: "TrueTime",
            path: "Sources", // 소스 파일 경로
            exclude: [],     // 제외할 파일(필요시 추가)
            publicHeadersPath: "", // 공개 헤더가 위치한 상대 경로
            cSettings: [
                .headerSearchPath("Sources") // 헤더 파일 검색 경로
            ]
        ),
        // 테스트 타겟 정의
        .testTarget(
            name: "TrueTimeTests",
            dependencies: ["TrueTime"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5] // Swift 언어 버전 설정
)
