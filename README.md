# swift-dimension

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Declaration-owning namespaces and intrinsic dimensional concepts for Swift.

`Dimension` defines coordinate, displacement, extent, measure, angle, scale, interval, orientation-enum, chirality, winding, and spatial tag types without selecting carriers or importing integration domains.

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/swift-atoms/swift-dimension.git", branch: "main"),
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Dimension", package: "swift-dimension"),
    ]
)
```

## Concepts

```swift
import Dimension

enum Screen {}

let _: Coordinate.X<Screen>.Type = Coordinate.X<Screen>.self
let _: Displacement.Y<Screen>.Type = Displacement.Y<Screen>.self
let _: Extent.Vector<3, Screen>.Type = Extent.Vector<3, Screen>.self
let _: Area<Screen>.Type = Area<Screen>.self

let forward = Depth.forward
let backward = forward.opposite
```

The package contains one product, `Dimension`, and has no production package dependencies. Carrier-backed values and cross-domain behavior are supplied by focused molecules such as Axis Dimension, Dimension Direction, Dimension Pair, and Dimension Tagged.

## Community

<!-- BEGIN: discussion -->
*Discussion thread will be created at first public release.*
<!-- END: discussion -->

## License

Apache 2.0. See [LICENSE.md](LICENSE.md).
