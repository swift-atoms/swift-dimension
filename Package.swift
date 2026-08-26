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
            name: "Dimension Test Support",
            targets: ["Dimension Test Support"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-molecules/swift-axis.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-molecules/swift-direction.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-molecules/swift-finite.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-molecules/swift-tagged.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-molecules/swift-numeric.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-molecules/swift-pair.git",
            branch: "main"
        ),
    ],
    targets: [
        .target(
            name: "Dimension",
            dependencies: [
                .product(name: "Axis Primitive", package: "swift-axis"),
                .product(name: "Direction Primitive", package: "swift-direction"),
                .product(name: "Finite", package: "swift-finite"),
                .product(name: "Tagged", package: "swift-tagged"),
                .product(name: "Numeric Core", package: "swift-numeric"),
                .product(name: "Real", package: "swift-numeric"),
                .product(name: "Pair", package: "swift-pair"),
            ]
        ),
        .target(
            name: "Dimension Test Support",
            dependencies: [
                "Dimension",
                .product(
                    name: "Finite Test Support",
                    package: "swift-finite"
                ),
            ],
            path: "Tests/Support"
        ),
        .testTarget(
            name: "Dimension Tests",
            dependencies: [
                "Dimension",
                "Dimension Test Support",
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
