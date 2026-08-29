# swift-spatial

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Phantom-typed spatial dimensions with tagged value carriers for Swift.

`Spatial` defines coordinate, displacement, extent, and measure tag types over a phantom `Space`, their `Tagged` value carriers, space-driven quantization, cross-spatial arithmetic, and scaling by `Scale` factors.

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/swift-atoms/swift-spatial.git", branch: "main"),
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Spatial", package: "swift-spatial"),
    ]
)
```

## Concepts

```swift
import Spatial
import Tagged

enum Screen {}

let x: Coordinate.X<Screen>.Value<Double> = Tagged(10.0)
let dx: Displacement.X<Screen>.Value<Double> = Tagged(5.0)

let moved = x + dx
let area: Area<Screen>.Value<Double> = dx * dx
```

The package contains one product, `Spatial`, and depends on `swift-tagged`, `swift-numeric`, and `swift-scale`. Angle values live in `swift-angle`; orientation, chirality, and winding live in `swift-direction`.

## Community

<!-- BEGIN: discussion -->
*Discussion thread will be created at first public release.*
<!-- END: discussion -->

## License

Apache 2.0. See [LICENSE.md](LICENSE.md).
