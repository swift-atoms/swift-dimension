public import Tagged
public import Numeric

extension Tagged where Underlying: BinaryFloatingPoint {

    @inlinable
    public static func _quantize<S>(_ value: Underlying, in space: S.Type) -> Self {

        guard let quantized = S.self as? any Numeric.Quantized.Type else {
            return Self(_unchecked: value)
        }
        return _quantize(value, quantizedBy: quantized)
    }

    @inlinable
    public static func _quantize<Q: Numeric.Quantized>(
        _ value: Underlying,
        quantizedBy space: Q.Type
    ) -> Self {
        let q = Q.quantum(as: Underlying.self)
        let ticks = Int64((value / q).rounded())
        return Self(_unchecked: Underlying(ticks) * q)
    }
}

extension Tagged where Tag: Spatial, Tag.Space: Numeric.Quantized, Underlying: BinaryFloatingPoint {

    @inlinable
    public var ticks: Int64 {
        let q = Tag.Space.quantum(as: Underlying.self)
        return Int64((underlying / q).rounded())
    }

    @inlinable
    public init(ticks: Int64) {
        let q = Tag.Space.quantum(as: Underlying.self)
        self.init(_unchecked: Underlying(ticks) * q)
    }
}
