public import Scale
public import Tagged

@inlinable
public func width<Space, Scalar>(
    _ dx: Displacement.X<Space>.Value<Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    dx.retag(Extent.X<Space>.self)
}

@inlinable
public func height<Space, Scalar>(
    _ dy: Displacement.Y<Space>.Value<Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    dy.retag(Extent.Y<Space>.self)
}

@inlinable
public func depth<Space, Scalar>(
    _ dz: Displacement.Z<Space>.Value<Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    dz.retag(Extent.Z<Space>.self)
}

extension Tagged::Tagged where Tag: Spatial, Underlying: AdditiveArithmetic {

    @inlinable
    public static var zero: Self {
        Self(_unchecked: .zero)
    }
}

extension Tagged::Tagged where Tag: Spatial, Underlying: SignedNumeric {

    @inlinable
    public static prefix func - (value: Self) -> Self {
        value.map { -$0 }
    }
}

@inlinable
public func abs<Tag: Spatial, T: SignedNumeric & Comparable>(
    _ x: Tagged::Tagged<Tag, T>
) -> Tagged::Tagged<Tag, T> {
    x.map { abs($0) }
}

@inlinable
public func min<Tag: Spatial, T: Comparable>(
    _ x: Tagged::Tagged<Tag, T>,
    _ y: Tagged::Tagged<Tag, T>
) -> Tagged::Tagged<Tag, T> {
    x.underlying <= y.underlying ? x : y
}

@inlinable
public func max<Tag: Spatial, T: Comparable>(
    _ x: Tagged::Tagged<Tag, T>,
    _ y: Tagged::Tagged<Tag, T>
) -> Tagged::Tagged<Tag, T> {
    x.underlying >= y.underlying ? x : y
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Magnitude<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Magnitude<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func < <Space, Scalar: Comparable>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Bool { lhs.underlying < rhs.underlying }

@inlinable
public func < <Space, Scalar: Comparable>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Bool { lhs.underlying < rhs.underlying }

@inlinable
public func <= <Space, Scalar: Comparable>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Bool { lhs.underlying <= rhs.underlying }

@inlinable
public func <= <Space, Scalar: Comparable>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Bool { lhs.underlying <= rhs.underlying }

@inlinable
public func > <Space, Scalar: Comparable>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Bool { lhs.underlying > rhs.underlying }

@inlinable
public func > <Space, Scalar: Comparable>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Bool { lhs.underlying > rhs.underlying }

@inlinable
public func >= <Space, Scalar: Comparable>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Bool { lhs.underlying >= rhs.underlying }

@inlinable
public func >= <Space, Scalar: Comparable>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Bool { lhs.underlying >= rhs.underlying }

@inlinable
public func == <Space, Scalar: Equatable>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Bool { lhs.underlying == rhs.underlying }

@inlinable
public func == <Space, Scalar: Equatable>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Bool { lhs.underlying == rhs.underlying }

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Measure<1, Space>.Value<Scalar>,
    rhs: Measure<1, Space>.Value<Scalar>
) -> Measure<2, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Measure<1, Space>.Value<Scalar>,
    rhs: Measure<2, Space>.Value<Scalar>
) -> Measure<3, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: Swift.Numeric>(
    lhs: Measure<2, Space>.Value<Scalar>,
    rhs: Measure<1, Space>.Value<Scalar>
) -> Measure<3, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.underlying)
}

@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Area<Space>.Value<Scalar>,
    rhs: Area<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Area<Space>.Value<Scalar>,
    rhs: Area<Space>.Value<Scalar>
) -> Area<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func * <let N: Int, Space, Scalar: FloatingPoint>(
    lhs: Measure<N, Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Measure<N, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <let N: Int, Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Measure<N, Space>.Value<Scalar>
) -> Measure<N, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func / <let N: Int, Space, Scalar: FloatingPoint>(
    lhs: Measure<N, Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Measure<N, Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Area<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.underlying)
}

@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Area<Space>.Value<Scalar>,
    rhs: Area<Space>.Value<Scalar>
) -> Scale<1, Scalar> {
    Scale(lhs.underlying / rhs.underlying)
}

@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Scale<1, Scalar> {
    Scale(lhs.underlying / rhs.underlying)
}

@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Scale<1, Scalar> {
    Scale(lhs.underlying / rhs.underlying)
}

@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Scale<1, Scalar> {
    Scale(lhs.underlying / rhs.underlying)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Coordinate.X<Space>.Value<Scalar>
) -> Coordinate.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Coordinate.Y<Space>.Value<Scalar>
) -> Coordinate.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func - <Space, Scalar: AdditiveArithmetic>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying - rhs.underlying)
}

@inlinable
public func - <Space, Scalar: BinaryFloatingPoint>(
    lhs: Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func + <Space, Scalar: AdditiveArithmetic>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying + rhs.underlying)
}

@inlinable
public func + <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Coordinate.Z<Space>.Value<Scalar>
) -> Coordinate.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.X<Space>.Value<Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Y<Space>.Value<Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func += <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = lhs + rhs
}

@inlinable
public func += <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying + rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func -= <Space, Scalar: AdditiveArithmetic>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = lhs - rhs
}

@inlinable
public func -= <Space, Scalar: BinaryFloatingPoint>(
    lhs: inout Coordinate.Z<Space>.Value<Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) {
    lhs = ._quantize(lhs.underlying - rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.X<Space>.Value<Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.Y<Space>.Value<Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Displacement.Z<Space>.Value<Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Displacement.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Displacement.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.X<Space>.Value<Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.X<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.X<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.Y<Space>.Value<Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Y<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Y<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Extent.Z<Space>.Value<Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Extent.Z<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Extent.Z<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying * rhs.value)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    ._quantize(lhs.underlying * rhs.value, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func * <Space, Scalar: FloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.value * rhs.underlying)
}

@inlinable
public func * <Space, Scalar: BinaryFloatingPoint>(
    lhs: Scale<1, Scalar>,
    rhs: Magnitude<Space>.Value<Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    ._quantize(lhs.value * rhs.underlying, in: Space.self)
}

@_disfavoredOverload
@inlinable
public func / <Space, Scalar: FloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    Tagged::Tagged(_unchecked: lhs.underlying / rhs.value)
}

@inlinable
public func / <Space, Scalar: BinaryFloatingPoint>(
    lhs: Magnitude<Space>.Value<Scalar>,
    rhs: Scale<1, Scalar>
) -> Magnitude<Space>.Value<Scalar> {
    ._quantize(lhs.underlying / rhs.value, in: Space.self)
}
