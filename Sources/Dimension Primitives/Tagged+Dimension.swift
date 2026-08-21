import Tagged_Primitives

extension Tagged where Underlying: FloatingPoint {

    @inlinable
    public static var ulpOfOne: Self { Self(_unchecked: Underlying.ulpOfOne) }

    @inlinable
    public static var infinity: Self { Self(_unchecked: Underlying.infinity) }

    @inlinable
    public static var nan: Self { Self(_unchecked: Underlying.nan) }

    @inlinable
    public var isNaN: Bool { underlying.isNaN }

    @inlinable
    public var isInfinite: Bool { underlying.isInfinite }

    @inlinable
    public var isFinite: Bool { underlying.isFinite }

    @inlinable
    public var isZero: Bool { underlying.isZero }

    @inlinable
    public var sign: FloatingPointSign { underlying.sign }
}

@inlinable
public func sqrt<Space, Scalar: FloatingPoint>(
    _ value: Tagged<Area<Space>, Scalar>
) -> Tagged<Magnitude<Space>, Scalar> {
    Tagged(_unchecked: value.underlying.squareRoot())
}

@inlinable
public func sqrt<Space, Scalar: FloatingPoint>(
    _ value: Tagged<Volume<Space>, Scalar>
) -> Tagged<Area<Space>, Scalar> {
    Tagged(_unchecked: value.underlying.squareRoot())
}

extension Tagged where Underlying: FloatingPoint {

    @inlinable
    public func squareRoot() -> Self {
        Self(_unchecked: underlying.squareRoot())
    }
}

extension Tagged where Underlying: BinaryFloatingPoint {

    public init<I: BinaryInteger>(_ value: I) {
        self.init(_unchecked: Underlying(value))
    }
}

extension Tagged where Tag: Spatial {

    @_disfavoredOverload
    @inlinable
    public init(_ value: Underlying) {
        self.init(_unchecked: value)
    }
}

extension Tagged where Tag: Spatial, Underlying: BinaryFloatingPoint {

    @inlinable
    public init(_ value: Underlying) {
        self = ._quantize(value, in: Tag.Space.self)
    }
}

extension Tagged where Underlying: SignedNumeric, Underlying.Magnitude == Underlying {

    @inlinable
    public var magnitude: Self {
        Self(_unchecked: underlying.magnitude)
    }
}

extension Tagged where Underlying: BinaryFloatingPoint {

    @inlinable
    public static var pi: Self { Self(_unchecked: Underlying.pi) }
}
