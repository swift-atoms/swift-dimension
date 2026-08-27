public import Dimension

extension Interval.Unit: ExpressibleByFloatLiteral
where Scalar: ExpressibleByFloatLiteral {

    public typealias FloatLiteralType = Scalar.FloatLiteralType

    @inlinable
    public init(floatLiteral value: FloatLiteralType) {
        let scalar = Scalar(floatLiteral: value)
        assert(
            scalar.isFinite && scalar >= 0 && scalar <= 1,
            "Float literal must be finite and in [0, 1]"
        )

        self.init(clamping: scalar)
    }
}
