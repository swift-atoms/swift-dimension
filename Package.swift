// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-dimension",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "Dimension",
            targets: ["Dimension"]
        ),
        .library(
            name: "Dimension Standard Library Integration",
            targets: ["Dimension Standard Library Integration"]
        ),
        .library(
            name: "Dimension Apple Foundation Integration",
            targets: ["Dimension Apple Foundation Integration"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-atoms/swift-tagged.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-numeric.git",
            branch: "main"
        ),
    ],
    targets: [
        .target(
            name: "Dimension",
            dependencies: [
                .product(name: "Tagged", package: "swift-tagged"),
                .product(name: "Numeric", package: "swift-numeric"),
                .product(name: "Numeric Standard Library Integration", package: "swift-numeric"),
            ]
        ),
        .target(
            name: "Dimension Standard Library Integration",
            dependencies: ["Dimension"]
        ),
        .target(
            name: "Dimension Apple Foundation Integration",
            dependencies: [
                "Dimension",
                "Dimension Standard Library Integration",
            ]
        ),
        .testTarget(
            name: "Dimension Tests",
            dependencies: [
                "Dimension",
                "Dimension Standard Library Integration",
                .product(name: "Tagged", package: "swift-tagged"),
                .product(name: "Tagged Standard Library Integration", package: "swift-tagged"),
                .product(name: "Numeric", package: "swift-numeric"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
